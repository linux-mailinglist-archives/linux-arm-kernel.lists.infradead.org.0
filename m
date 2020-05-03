Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8660B1C2DCF
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 May 2020 17:58:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8CsYIj856QEDw9UtEOc3TueeoOvpHNUlSeJpiC1mC84=; b=YhHh/FdYT85wMe
	PNgaPuNXoNS9vdLxJUgQcGXpZM9e5Fw5VpF1Yhg79kgppZ931SpHPBWpFH3+hw4Hop3eOgvE1wrTt
	8KnRdpECR4nS/NYOkPKZ/tyCe2VKVefYhMj+W0JmxwNtZbm6xh2udh5twzPNU0Ri3y9KW35jOizDK
	8VkcBuApUyUsYpgP7D2khN0jZAissOMj4R0AnClvt/uKFZXRMD2Abjh1K2ykN1uxkcn/eDiQDUqN8
	eqi9N5Wp1kIeuXer2HpTcnx/wrPTNo36S3PT/lxGCdedeBfG8UmrJlFhLJbD4vOVSCs0/QxwHuxsA
	zFer13KpazMe9Q7W0sxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVH0d-0000XK-UN; Sun, 03 May 2020 15:58:27 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVGya-00079u-Om
 for linux-arm-kernel@lists.infradead.org; Sun, 03 May 2020 15:56:23 +0000
Received: by mail-ot1-f67.google.com with SMTP id z25so6704239otq.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 03 May 2020 08:56:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=WYg40TLk3KADJiyif1yUUKuz9+nrJ8NqElcSmLLhB0k=;
 b=eQ+bv4FiwKCi8ko3dV8hxem4YF+n0gqdYY3meT+b5TaXMrnuqhlM4VIXrtBj18940Z
 dzNP7OJGzwwV2WXZ0EKRBEONLy2TvweITMswfyLFWJCC5XS9iflU7Xv802iPJr/5hTGV
 LkSBn1d1FqJVdTYi+DMWwgjmmjvi7eJAmzcHcHi6naS/Owx/ZBp4QihsgOMkVP1c6Hvs
 /V/NresRQbFO3czRFkDuejOzhpEFwLYw24U60h2lvRd5VBe7Ox6T2P7T14A8+pyy1NE3
 rj15SYBMATeF+9Z/VK7osKWdJvSyP4t8edDqw4h8q3lvFCWMsqBW5K2wsZIg1dnusEIU
 sgFg==
X-Gm-Message-State: AGi0PuZDvgqz3UMMqCamxCMZF0goFv4pgxWUInPLJiJf8rmxILBIwxKj
 vkRV5t1p1osldkvWwCm49A==
X-Google-Smtp-Source: APiQypIaJB2V1R3yN4okOSQIUQdfXjuVW2kXux3Do0/BFcV5FP8EpdLt2iu8wdRoFonVOD7wWRvOpA==
X-Received: by 2002:a9d:3988:: with SMTP id y8mr10608108otb.352.1588521379608; 
 Sun, 03 May 2020 08:56:19 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id y131sm1651023oie.39.2020.05.03.08.56.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 03 May 2020 08:56:19 -0700 (PDT)
Received: (nullmailer pid 22470 invoked by uid 1000);
 Sun, 03 May 2020 15:56:18 -0000
Date: Sun, 3 May 2020 10:56:18 -0500
From: Rob Herring <robh@kernel.org>
To: Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH v3 7/8] dt-bindings: ipmi: Convert IPMI-SMIC bindings to
 json-schema
Message-ID: <20200503155618.GA22437@bogus>
References: <20200430211054.30466-1-andre.przywara@arm.com>
 <20200430211054.30466-8-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200430211054.30466-8-andre.przywara@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_085620_816235_03D4A033 
X-CRM114-Status: GOOD (  12.07  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree@vger.kernel.org, Corey Minyard <minyard@acm.org>,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 openipmi-developer@lists.sourceforge.net, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 30 Apr 2020 22:10:53 +0100, Andre Przywara wrote:
> Convert the generic IPMI controller bindings to DT schema format
> using json-schema.
> 
> The device_type property is deprecated for most node per the DT spec,
> but at least the Linux driver matches on it, so I keep it in.
> 
> The Linux driver parses for some additional and optional properties,
> but there are no in-tree users. Let's allow extra properties to cover
> any other users.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  .../devicetree/bindings/ipmi/ipmi-smic.txt    | 25 --------
>  .../devicetree/bindings/ipmi/ipmi-smic.yaml   | 63 +++++++++++++++++++
>  2 files changed, 63 insertions(+), 25 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/ipmi/ipmi-smic.txt
>  create mode 100644 Documentation/devicetree/bindings/ipmi/ipmi-smic.yaml
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
