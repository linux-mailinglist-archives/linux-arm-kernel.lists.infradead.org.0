Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE8B810DF6
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 22:26:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RkPsh9dGXZCPadn/+p0J36w8cGjwX4x+nebMB9RwI0I=; b=bpraYzyRqiHJTT
	+UTEHRrGI2s2VD8IMlRwkUuxO3yeNVSCRGniEc0F7RYGar5z+J3bfM8+fZYXlMHcF+pptcHTPqe3M
	hY6qapJjK5e3uPTrZZ6w4+lvLdwP9alE8STCRR8w4OIdgOlRiU9ZewkMwoLVc73x2uGlOcyl4kmiz
	zgEQw3DFnf2zi3E03LpyPnuagphagx4Tepm/MSHhiCeFD3HztAsBFu9VA++q6g7nW7ItbbHXPZTUP
	N+uIYO3+Lz/qhGGqTXDyL2CkFw71+Xq/pqJMIR5gT1mQXAsBQKbMIqrFY2MZVjRX2BA+Nn1nyUDd6
	F+/t3cgy8SkO0orQUtiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLvoP-0003Y0-3u; Wed, 01 May 2019 20:26:41 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLvoI-0003XA-00; Wed, 01 May 2019 20:26:35 +0000
Received: by mail-ot1-f67.google.com with SMTP id o39so119558ota.6;
 Wed, 01 May 2019 13:26:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=i4BcmLTt3qSO7ebRuLnsFYshyO5n3Uthw1CjDsmT+WQ=;
 b=Kvv4TqSHIoD9k14xV85uWIbtX/DJJgvnL8+NWrj8AKeHDu1YkrYOZ/G9G4e38n0+o2
 CP8QvsLgvtH/rllNKPeLInBoJteY30mTyp0ZZ1LHpOd5muI74hi7hIIU05FFpNurOo+/
 f+xeHrhSOoKYXEK7rVGr5ZKKmfvy7VCWYz5rjvQDXjf7fE7ZCLJIRXIRkhYgOEAMD5xs
 6rofnDhoLcCH18rtOdgiMfmsSiRfAiXxb3MKrHm7HzaORd3JVrC9kDJmhTSRRtS1inzh
 tkMfZGuxcGaIU8uumxBESBSGK5DqEPOZhZJ0aJZfgttqjGiUn0n6eGOkN3B/bdL0mQEg
 /tpw==
X-Gm-Message-State: APjAAAW+zo8x32DlL/4YPRKivd+fo4+k2CEji+udVp4f35D4ZpndIJz+
 s2oT5rhXfCRnlHID9VsrJg==
X-Google-Smtp-Source: APXvYqyvGU61UGP21sWZd1plEHAvhFnejz8U8UyYK+r4AbW/b/4XFJAPlAw38GlaTScboSWrdAblAg==
X-Received: by 2002:a9d:6f0f:: with SMTP id n15mr12164732otq.194.1556742392971; 
 Wed, 01 May 2019 13:26:32 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id r25sm15928842otk.37.2019.05.01.13.26.31
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 01 May 2019 13:26:31 -0700 (PDT)
Date: Wed, 1 May 2019 15:26:31 -0500
From: Rob Herring <robh@kernel.org>
To: Henry Chen <henryc.chen@mediatek.com>
Subject: Re: [RFC V2 02/11] dt-bindings: soc: Add opp table on scpsys bindings
Message-ID: <20190501202631.GA2677@bogus>
References: <1556614265-12745-1-git-send-email-henryc.chen@mediatek.com>
 <1556614265-12745-3-git-send-email-henryc.chen@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1556614265-12745-3-git-send-email-henryc.chen@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_132634_231964_4585A37C 
X-CRM114-Status: UNSURE (   9.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Nicolas Boichat <drinkcat@google.com>, Weiyi Lu <weiyi.lu@mediatek.com>,
 James Liao <jamesjj.liao@mediatek.com>, Viresh Kumar <vireshk@kernel.org>,
 linux-kernel@vger.kernel.org, Henry Chen <henryc.chen@mediatek.com>,
 Stephen Boyd <swboyd@chromium.org>, Fan Chen <fan.chen@mediatek.com>,
 devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Georgi Djakov <georgi.djakov@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 30 Apr 2019 16:50:56 +0800, Henry Chen wrote:
> Add opp table on scpsys dt-bindings for Mediatek SoC.
> 
> Signed-off-by: Henry Chen <henryc.chen@mediatek.com>
> ---
>  .../devicetree/bindings/soc/mediatek/scpsys.txt    | 42 ++++++++++++++++++++++
>  1 file changed, 42 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
