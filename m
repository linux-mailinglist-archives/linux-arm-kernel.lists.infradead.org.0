Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F16585863
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 05:03:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uLb8v5XgNee61+8v7zMlr3lZ4sBFVsAq5L5KlOAFo5k=; b=cOX0/Zy1VuM1A4
	YftVTkqBMqC8mdaABOfQwRJOAbm4g7GpeiOqPM3oU+3FaKDeZNMFf0ed3x2q6NzzndZlCB9yNg+vX
	X/vYEnWuO4gB2Jf8FSyLBi+4uJGQWuaYw1xJj482sg32XxviJsqRv5n7Wa3YLWww+sYaHewfEdaPo
	RCIDBj+/Na+IgC9VKBRnvKMbfaAdMEFB3+E38MW/KCW3YCNK/Y9nQlk6Ud0AMHefZuXB6PKP1ZNyq
	FNfK/5GcU9fY1kS08mjaThBH4NC9jKiTS6z/8QJmcM/r4NZ7WrUk3WopdEY5lspdgs7R1PxCuDBXH
	0mqyB57uAMHhO9QBgckw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvYhY-0005nZ-Vo; Thu, 08 Aug 2019 03:02:53 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvYhI-0005lV-4n
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 03:02:37 +0000
Received: by mail-pf1-x442.google.com with SMTP id u14so43240911pfn.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 07 Aug 2019 20:02:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=/Z7L8SyshdubRcyIY95repgYfqLBFE4FKfh7eq8hsWQ=;
 b=VMkDtAtLTGvihLldZdjOKfErDSzMhon6bH5G3BdL+lkNsLL3dhRGrdijMSDj0i4/7d
 I4trJ2cPBcfQ9b3hUyrfivjLrr4sWMt8cYYyyVntaeqVNyAvZ5dxivLyOgVXVvDiPk6c
 jkqX9k20VGWNQKfp3L0eAGSlUB+86FaeW6LxVEayaRqcWTMWv0F3CGeFSxefboLbNnsR
 S1XHjj1FrqZi3qhOfdimenhnFDt052N8RMB9eb8BKX6yHcHBDlefcglRUp7sKokpTRMx
 sd9CmtD2VJcXM8d2+Wd2EqZ/6xbNLNJMIZshGNVOVfMuYEXBx85IGCNog25/90slfPuc
 dtZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=/Z7L8SyshdubRcyIY95repgYfqLBFE4FKfh7eq8hsWQ=;
 b=iKDIDagAAxp1Lfo9og56m0BwvfISNAAXklB7v8xzUdTN8lRzIEORJ1bCL4oePuRvGd
 3G94yedcmKsbvZZo4BNKwVMg1wQ+UOC0pDN3/QcHqSGSXqo8MA1hP3+6NVl1T8c2ZW81
 +seJnnvHyf9zF5VBlczOcSbM/6exYBMFVjlFoL0nPmiTohfaroTY+G6mcUYTKJk48qXd
 9kSP+fST0FimY03jG9XqZ8TuEN5e6vw9BC/0SdfpgxMnlekAln50LF1ZbHQIgN0iOucf
 2yPXFUEIoShKHw7NiYSwtMQN2hAK+UzKTuD7fJPwbsypz587vCwL/iZe75oAOkHG5tpC
 FQ+A==
X-Gm-Message-State: APjAAAW6bPmSAdcqVucefV0pekhFEmIvfWSWwrt0+Gur/alNtSDLsGX9
 G6WnXTuyQq4pZWK8FI77gULafg==
X-Google-Smtp-Source: APXvYqylJQrZTaVlqLyT+6q2Nr1Mjd7x1ZREstnHaNOUKd1r3XvtkoAaiLRMfJ80fzLmRpUIRf0/6A==
X-Received: by 2002:a62:1d8f:: with SMTP id
 d137mr13114157pfd.207.1565233355043; 
 Wed, 07 Aug 2019 20:02:35 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152]) by smtp.googlemail.com with ESMTPSA id
 q126sm52203296pfb.56.2019.08.07.20.02.34
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 07 Aug 2019 20:02:34 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 2/6] dt-bindings: arm: amlogic: add bindings for G12B
 based S922X SoC
In-Reply-To: <CAL_JsqL_L2qHe334sB57hR_coRhawKiqXYjKAQDJt_DHfBamBQ@mail.gmail.com>
References: <20190731124000.22072-1-narmstrong@baylibre.com>
 <20190731124000.22072-3-narmstrong@baylibre.com>
 <7hblx3gua3.fsf@baylibre.com>
 <CAL_JsqL_L2qHe334sB57hR_coRhawKiqXYjKAQDJt_DHfBamBQ@mail.gmail.com>
Date: Wed, 07 Aug 2019 20:02:33 -0700
Message-ID: <7h7e7ofjg6.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_200236_183358_58FFD0A0 
X-CRM114-Status: GOOD (  14.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Neil Armstrong <narmstrong@baylibre.com>,
 Christian Hewitt <christianshewitt@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-amlogic@lists.infradead.org,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Rob Herring <robh@kernel.org> writes:

> On Mon, Aug 5, 2019 at 3:46 PM Kevin Hilman <khilman@baylibre.com> wrote:
>>
>> Neil Armstrong <narmstrong@baylibre.com> writes:
>>
>> > Add a specific compatible for the Amlogic G12B family based S922X SoC
>> > to differentiate with the A311D SoC from the same family.
>> >
>> > Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
>> > ---
>> >  Documentation/devicetree/bindings/arm/amlogic.yaml | 1 +
>> >  1 file changed, 1 insertion(+)
>> >
>> > diff --git a/Documentation/devicetree/bindings/arm/amlogic.yaml b/Documentation/devicetree/bindings/arm/amlogic.yaml
>> > index 325c6fd3566d..3c3bc806cd23 100644
>> > --- a/Documentation/devicetree/bindings/arm/amlogic.yaml
>> > +++ b/Documentation/devicetree/bindings/arm/amlogic.yaml
>> > @@ -139,6 +139,7 @@ properties:
>> >          items:
>> >            - enum:
>> >                - hardkernel,odroid-n2
>> > +          - const: amlogic,s922x
>> >            - const: amlogic,g12b
>>
>> nit: in previous binding docs, we were trying to keep these sorted
>> alphabetically.  I'll reorder the new "s922x" after "g12b" when
>> applying.
>
> No, this is not documentation ordering. It's the order compatible
> strings must be in.

Ah, thanks for clarifying,

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
