Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DF81B8212
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 22:01:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4oYC47jBBNOtuJUJoSNNNDcZ7pdRS0+vh3RmCa2SMiU=; b=s5HZnVG89LZnnT
	6NEysY6ulYh8mE3gjizzZJ2oR7YRF9lZZDY3roLjsPCEnkARp2RQZHHaX9anduUvhFJXEXxLmWdp+
	b8FDGnQlxYBIZ3zBoKKIWOZKCwkxu4Gg8lVYb5FRzfWE1uSyeph9S4VFialVKsZ71cvic6cAMlDXE
	R9gd6jg/LUVJtZRCT5rd3lUK0OBVmTGdaZRA1Dw4a+AdZ0V/3PZTc9PVn76xZCwhBaUG3m2XH6pdq
	gwo5udSjLqUQI5WMFBAXaQtbqlSOoVVhaeXeohBFmjGSiEVZMdDVJQ3FD6zqlphW259W9RwRemAXn
	7990SlIbbW/7Ay8+HSEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iB2bp-0006QB-8I; Thu, 19 Sep 2019 20:00:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iB2Vw-0007LV-MD
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 19:54:54 +0000
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com
 [209.85.160.172])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A3CB820678
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Sep 2019 19:54:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568922891;
 bh=NKeHsjE9y7nzQ8bAyeySvn4Pq7CKSbTu+e+36rl6Wxo=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=BcSOxA+eFw++/YClQslyED8fMsXKHPPI8vtL84o6dVNJAIbQRkqdc1w565fVgGX3/
 nYbL7F4fSNBPFIqXi8g3tmc33ZotDgNvGMfGYMLtNS8fGm9e5wvoN8HX0b2emp5GKj
 2x53yfrJ0Ar7a+L1vi7eYnnul08bUUK+N+zmHc3Q=
Received: by mail-qt1-f172.google.com with SMTP id u22so5767148qtq.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Sep 2019 12:54:51 -0700 (PDT)
X-Gm-Message-State: APjAAAU5jx0N7cBvFdxlXdMyP1depe0WKP3hES9uL83MFCNkjdtkkTfK
 RA0zMLZPK//zrY08zl4s30m3aesB9kMWOcdigA==
X-Google-Smtp-Source: APXvYqz+8osRNXbt3CtV46VPmD8JNxl+29Q1bDc72UZd/+b0HeyXjy+hyOaYu5e/za8SVmBxq3mr0divdiMrmZGdnw4=
X-Received: by 2002:ac8:444f:: with SMTP id m15mr5229280qtn.110.1568922890902; 
 Thu, 19 Sep 2019 12:54:50 -0700 (PDT)
MIME-Version: 1.0
References: <20190917174817.GA27938@bogus>
 <20190919123001.23081-1-t-kristo@ti.com>
In-Reply-To: <20190919123001.23081-1-t-kristo@ti.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 19 Sep 2019 14:54:39 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+x93K9=L4s6ZdmsDb__==kP36WbM_WY1pB-_QNPOhsGw@mail.gmail.com>
Message-ID: <CAL_Jsq+x93K9=L4s6ZdmsDb__==kP36WbM_WY1pB-_QNPOhsGw@mail.gmail.com>
Subject: Re: [PATCHv6 01/10] dt-bindings: omap: add new binding for PRM
 instances
To: Tero Kristo <t-kristo@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_125452_786286_4D49C785 
X-CRM114-Status: GOOD (  12.11  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, Tony Lindgren <tony@atomide.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Santosh Shilimkar <ssantosh@kernel.org>,
 linux-omap <linux-omap@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 19, 2019 at 7:30 AM Tero Kristo <t-kristo@ti.com> wrote:
>
> Add new binding for OMAP PRM (Power and Reset Manager) instances. Each
> of these will act as a power domain controller and potentially as a reset
> provider.
>
> Signed-off-by: Tero Kristo <t-kristo@ti.com>
> ---
> v6: added common compatible as per request from Tony Lindgren. This is
>     to simplify the support code in patch #10 of the series slightly
>
>  .../devicetree/bindings/arm/omap/prm-inst.txt | 30 +++++++++++++++++++
>  1 file changed, 30 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/arm/omap/prm-inst.txt

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
