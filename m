Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBCF613CA0
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 May 2019 03:29:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J35KaZhACEPcy6hjGHOsHmgM5W1IunNGFjepgzn/om4=; b=pQQqhZx3sLXo5X
	ihEkEWfHDWmw51oY9/eutxTiwQU01f31keI5lmB0fMoCxCch2PQS1lv1/niDrgbXfjFaUSrhGjz7Y
	FTtlCX407tglznmFACbx69QdsmODjLZxhBavscgEEFjvVBB+RuWk3UXJtAkvx4bQYaEhzGZ23Irvk
	pxGHWzhpVmk0U2+G78Pc+N2TMY3Wf3yj/QMtAgXN+RgWRQ6DRSP3oPOaMpsC0OrtJj9YjzOq4BnJr
	SK/p7xG0o6DM814ctDc/f0B3TYThj05ChNkWlsF5COIRvXfv9f9UQKGc9aD23LazIZW07CyQKp8qT
	rvAZ/3QzXcveQEzs5XYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hN5xr-0002E8-HW; Sun, 05 May 2019 01:29:15 +0000
Received: from mail-yw1-xc44.google.com ([2607:f8b0:4864:20::c44])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hN5x4-0001zA-Go
 for linux-arm-kernel@lists.infradead.org; Sun, 05 May 2019 01:28:28 +0000
Received: by mail-yw1-xc44.google.com with SMTP id s5so1009304ywd.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 04 May 2019 18:28:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=2otJGsHwkb3bMNHmlrt86miIvaLDTlDpTJs8h69fY9k=;
 b=JxhfTMnbWRoOHCOUk/H+0boBBwK1HWTT0HZFsJweoqU4b4GBnnp+GQ5OVf4JNfg1Yt
 v2h9iSU74OGnfmIDHmo1nM80H7+pQvBvj/xuXBkEIHGYVXybXSH9e9rAQqbuY6CK76vF
 686yvgWB+Sc6PuXSlHT5Dcr00FPjG/OV2WtX6DKpu1jNyvAsgKMP60rLr0xTS9q71w0Z
 DJoeWiOlLDlCc87tNnaK8h+ErZr4gfVXMKfwHQ4EB47DoDBI+E/HAXihxEzeaqB9NNCM
 /Yv67vyrQ6dItsMU3l4IvoNs7WKll32XcSgecrV18xOKyvrbcB74zw4KcIK9hK2z2VAB
 hw9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=2otJGsHwkb3bMNHmlrt86miIvaLDTlDpTJs8h69fY9k=;
 b=QS7EaC1f7A2tubJB+He3GL1xnuwR9SPPDAS3mtXVk8nkxJkU+5g32KEwBUtQx8sTsA
 +8mUsNWmKF69vflRtsACpwwmhJJ6JVo35KSa0oMFaMf61gfQFywjGMN930a5EmF5bVSE
 S0B+UuruLjlIU0GpAQ0W9HbMZCFWN0EZ17zrg1LlEnhwIWyz9IcjG3RagH2I5gsE2ZVI
 gnMxgqWMx+bQL/tjHmoKmKqH/7mDnPIYTf0ySyRqxTRvKLzWVp4GGsxBOeSZVBkymLwp
 qBHqPhadlRxangdvvHgGONW34dxhM+mQatR/Emb+ea7o3rS7jvie9FXjf6YrTCXsvnwb
 5ILQ==
X-Gm-Message-State: APjAAAXKMXTQeEPTrCrWepjKtohur/XMCn1K/0lgncYJfbWFeirWj2OT
 NXVKZYqsYSg03fjesv6/b0LmrQ==
X-Google-Smtp-Source: APXvYqz7Z9HZlRm0+fIdfo/3YxyspUpGDcHqYzE/lSefk4LuGcWQDBJSRzQ6K2CZ5K1h8oOvfmrEow==
X-Received: by 2002:a25:6104:: with SMTP id v4mr3581702ybb.450.1557019703548; 
 Sat, 04 May 2019 18:28:23 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li931-65.members.linode.com.
 [45.56.113.65])
 by smtp.gmail.com with ESMTPSA id a11sm4034363ywh.49.2019.05.04.18.28.19
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 04 May 2019 18:28:22 -0700 (PDT)
Date: Sun, 5 May 2019 09:28:15 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH v5 4/4] coresight: funnel: Support static funnel
Message-ID: <20190505012815.GA6229@leoy-ThinkPad-X240s>
References: <20190412102738.12679-1-leo.yan@linaro.org>
 <20190412102738.12679-5-leo.yan@linaro.org>
 <16ae9127-b282-e6b8-3a6c-5165c8618bb4@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <16ae9127-b282-e6b8-3a6c-5165c8618bb4@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_182827_522276_F4B64A1A 
X-CRM114-Status: UNSURE (   9.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, shiwanglai@hisilicon.com,
 mathieu.poirier@linaro.org, alexander.shishkin@linux.intel.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Suzuki,

On Fri, May 03, 2019 at 04:11:50PM +0100, Suzuki K Poulose wrote:

[...]

> Given that we now warn about OBSOLETE bindings, please could you fix
> the existing DTS in the kernel source tree to use the new binding ?
> Similarly for the replicator.

Yeah, will do.  Thanks for reminding.

Thanks,
Leo Yan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
