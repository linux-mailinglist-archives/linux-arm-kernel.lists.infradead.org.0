Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E36CCCD04
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 00:11:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UFQ657iKzuto6y3+w4pPa/dXHrxPkAGQjZM6OtqbXD4=; b=YyiHEiwZFoSvd1
	sNx0nfUIi+wvAFcGtLgqH9Bm8zTx8bbGSwsI6JOjmeJON3sIzBvat124eaXFsSS312a6HtWSIrUzl
	BgTPSwa68OuQ/Yu1mxVsA5JkpjFvODlW9EnHshVUfh+kGILGTqne/zcTDlmpmGPcw6qa82BB6MF1Q
	k+dalZuB59CcFBhYOWai2LXbrns/xIj73jzOvZEd4zFPWsxpSLQyaPglTbbZc9QV0K0OCS/eAJDb7
	O87+m92ueZtKn0II6r276cX13bh3m3irnL3La6BFJRfGR10XfebAKGqaQ/WSun0Eh8auf+3VGgocs
	3fHuYLmHKkcn58zAtpfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGsH6-00059E-FI; Sat, 05 Oct 2019 22:11:40 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGsH0-00058j-0m
 for linux-arm-kernel@lists.infradead.org; Sat, 05 Oct 2019 22:11:35 +0000
Received: by mail-io1-xd43.google.com with SMTP id b136so21013478iof.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 05 Oct 2019 15:11:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=blVWbQ8LGTmWcbMaVSzAee22OTpmCcZcWfN5kwN7yfA=;
 b=ooxswvb0J6Nl8U4f+wOQzQ+GhUlfPeX1fawieKbaALaZSgK8UeOVRymgVm3e8ivuSC
 wZijV4zwLaXHFF6KfcRCgnJmcVMK4NE+SmvUZ39xA4lgnlpI/BG8GtBSwmZEfj/zasmr
 mTpcN1BWaDuQqPGCg4VG0UgFaAsnhpWFkuDRuUqE7T8WhH5eRg6RdKNlUl1cuL+51RyC
 GdrZ3Xzxtr/KpvingYV/V8tfD+XWhpDkoBUUsrl5DZgokNB4SVMySRfG9u/tsg5bzXpb
 A4wfrnK3GAbeps/tdH5/2YoWctGTzFiozmmXxcx6KGVWpJP5ZMtitbbw9KEbFyGCD552
 8x3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=blVWbQ8LGTmWcbMaVSzAee22OTpmCcZcWfN5kwN7yfA=;
 b=g3z8n14EHck5sABIgiLP1a2suhUk9aVzlRWPFBvm4hRB7Z8JteEK2YvfVmZXVraZz+
 TUNDD6+d26mmROI6tLRlHddKScK560xSei1b86RRnpoDQeY9WeTgJjyB0SXCNI//J0mr
 PTNV2MFLGLc9Fou/2s5ZjA244u4133ZwUrblprfdN3MT9rBqzwRFs0xjwrFLoJN9hHsR
 T3pv1YYLO3Wh+9ZQ/562L/U2SrBTmTuIPc7GvYSeX+Su4lGLMmGATeDiLJlfaVt2Z9ai
 omL1qXjnB3oUc0FBiXM95U3V2DSXxHVglEZClLqkVezwy2OfO0N0c+4OVym1K6w3B0O6
 5uNg==
X-Gm-Message-State: APjAAAVDRW0PBDGXpmhTI8JTKNfY9/w0qUD6XG7+EafPP6wY5wLhvQTf
 wSAJvYkK3R01MGZ16sHCypS9azWFIhwNA+S/QJE=
X-Google-Smtp-Source: APXvYqzQT1c7pnffpOwVyuWw09hieLKy784BtRlDW77RL8onDGxxyo7zfbxousgRAv8KNDqsMP8K5wV3JJdcO28NYsc=
X-Received: by 2002:a05:6638:777:: with SMTP id
 y23mr21567831jad.111.1570313491952; 
 Sat, 05 Oct 2019 15:11:31 -0700 (PDT)
MIME-Version: 1.0
References: <20191005154240.22153-1-festevam@gmail.com>
In-Reply-To: <20191005154240.22153-1-festevam@gmail.com>
From: Chris Healy <cphealy@gmail.com>
Date: Sat, 5 Oct 2019 15:11:20 -0700
Message-ID: <CAFXsbZq3OBD7JrwemEmsztVSKkbj+_4Mg+OxufA4yKPJXsf8tA@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: vf610-zii-scu4-aib: Remove internal debug
 network interfaces
To: Fabio Estevam <festevam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191005_151134_091825_7C95D8C0 
X-CRM114-Status: GOOD (  15.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (cphealy[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Oct 5, 2019 at 8:42 AM Fabio Estevam <festevam@gmail.com> wrote:
>
> "internal_j8" and "internal_j9" are network interfaces that are not
> exposed outside the board and were only ever used for debugging purposes.
>
> Get rid of them as they are not needed.
>
> Signed-off-by: Fabio Estevam <festevam@gmail.com>
> ---
>  arch/arm/boot/dts/vf610-zii-scu4-aib.dts | 10 ----------
>  1 file changed, 10 deletions(-)
>
> diff --git a/arch/arm/boot/dts/vf610-zii-scu4-aib.dts b/arch/arm/boot/dts/vf610-zii-scu4-aib.dts
> index c7638132c0f3..1a6903723238 100644
> --- a/arch/arm/boot/dts/vf610-zii-scu4-aib.dts
> +++ b/arch/arm/boot/dts/vf610-zii-scu4-aib.dts
> @@ -183,11 +183,6 @@
>                                         #address-cells = <1>;
>                                         #size-cells = <0>;
>
> -                                       port@1 {
> -                                               reg = <1>;
> -                                               label = "internal_j9";
> -                                       };
> -
>                                         port@2 {
>                                                 reg = <2>;
>                                                 label = "eth_fc_1000_2";
> @@ -271,11 +266,6 @@
>                                         #address-cells = <1>;
>                                         #size-cells = <0>;
>
> -                                       port@1 {
> -                                               reg = <1>;
> -                                               label = "internal_j8";
> -                                       };
> -
>                                         port@2 {
>                                                 reg = <2>;
>                                                 label = "eth_fc_1000_8";
> --
> 2.17.1
>

Reviewed-by: Chris Healy <cphealy@gmail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
