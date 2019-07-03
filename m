Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 318A85E4B3
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 15:00:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lUGSnLGANlukPISwAC6Zh5TEyH/8OdYVHHa4/8+QPMA=; b=O3uQmrAYXcBpAh
	5OPDUIIkoByYYqr0ygCC3xSKltoZKRWNmDAXeEXA9ufhPHV9OD5LSL0G6brhTVBwG3mxPxV2CYa0j
	ZcLOSUQZ1+mEs6zZ/Do3zCrxKhlvpDAcM2NhNEi1YMmaUk6SGFALdPfefPzbVTh5ffWmVyjDTkdwT
	965XaXkYDqZr52fD5A+4meyxf4+O/JOP4JrVqaMRwENxDkrf06DdA+RxeLgsv8goDdErE/KyqjJsK
	x0R0rfJD92w+/LYx/oAZKBdvzGzLkdPK4giIGd61dcc+vpIUEVjJ3CeHG13JcFFHHOxRUmOA8Ozng
	tDBTx9rq7XECWJ7N4m2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hierg-0004eC-Op; Wed, 03 Jul 2019 13:00:00 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hieh4-0004RW-P9
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 12:49:05 +0000
Received: by mail-wr1-x42f.google.com with SMTP id p11so2675260wro.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jul 2019 05:49:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=FuvWmI2Ac2pIZhwnDICxrWfsRIUJnwbmAdcXZhrnIuk=;
 b=RVVGw0F7gOGZQ4TEpiyVQ85EpiJgXCb6jLFkfKamOa6QYuyFWojlAQNggohYTdzr2d
 9q2ep+cHOl6daAeiE6MSXobfTG5aGX49Tvu2IO5enl0jIOe6+Fyc7YPKt62Lp3z//l+t
 5afqY4Jrp15R8g77nUuJE0zNLnB+tFRaJJvPrdtgVU2z1eELcxW59gMb5Oc4lSJZx/bT
 yrhnSvteITwxxjIIy0k5vLmKmkPekYMDBmwxbyS+P7F+r3r29MkFd6jsS4TkM4huPNnH
 M1SHjrbF1o55wajA4Td86/gDNbl3yNNhwWYJOd8Rqh38DRdqqOeBuQVLho6nh0gafS1M
 9Y8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=FuvWmI2Ac2pIZhwnDICxrWfsRIUJnwbmAdcXZhrnIuk=;
 b=CFOvYU8zYbtG6JCGrm0s/u570EVPVuKSeOcu6AE9Bski5iijiFkT3UmkqKJN1589gk
 H1y12bOYXQMLa2XeD2NG15g164CjfeCAy8SjKL2fQjq9axcA2YFejOWod8tsIEApw3++
 ITTi5u0h6DxwAT5+8UNqWS9HjzhsxRlLfxZWOB4fnu4TOgCR8QzWkBOgLqaAMEM3gSZW
 R9B1wpRS+PdZ4IySl6MQ8dCv+lXmpuyY+VaKdVyC5Yxs1C5KyMKkisSvzcrS45KiK6sg
 ogRBxfDBoimiqiwIc9DQgTReNp4O8XXkq2qt2m5PkTUKmqWUdTQANxn7snFALF7DYvc+
 xeFw==
X-Gm-Message-State: APjAAAXd1DNHIKWmoM12sRkhumZjo85dkg0IDvEpZzXAoRVyYeZVCgwP
 go/BORyHpl9ogAT2fuJzSevv/Mc+rt/E/A==
X-Google-Smtp-Source: APXvYqyDAfOGOAjcImm7vz1haXRMsa83iykN2nsIK77a4bhegzF3S2j2rg4Wk9JFZ82wUNU8F7il6Q==
X-Received: by 2002:adf:b64b:: with SMTP id i11mr29086502wre.205.1562158140924; 
 Wed, 03 Jul 2019 05:49:00 -0700 (PDT)
Received: from localhost (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id q1sm1504594wmq.25.2019.07.03.05.49.00
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 03 Jul 2019 05:49:00 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: Re: [RFC/RFT v3 09/14] arm64: dts: move common G12A & G12B modes to
 meson-g12-common.dtsi
In-Reply-To: <e49bfb8f-23e9-c834-62c7-a40528a2ef06@baylibre.com>
References: <20190701091258.3870-1-narmstrong@baylibre.com>
 <20190701091258.3870-10-narmstrong@baylibre.com>
 <CAFBinCA537EV9kzz+5syaF1Q-stTJ4no+NBdcYD3QL-FJSoWfQ@mail.gmail.com>
 <e49bfb8f-23e9-c834-62c7-a40528a2ef06@baylibre.com>
Date: Wed, 03 Jul 2019 14:48:59 +0200
Message-ID: <1jlfxf7078.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_054902_988848_89535E47 
X-CRM114-Status: UNSURE (   8.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42f listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
Cc: khilman@baylibre.com, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed 03 Jul 2019 at 13:51, Neil Armstrong <narmstrong@baylibre.com> wrote:

> On 03/07/2019 01:54, Martin Blumenstingl wrote:
>> Hi Neil,
>> 
[...]
>> does it make sense to name this file "meson-g12a-g12b-sm1-common.dtsi" instead?
>> do you know whether there will be a successor to G12B and what it's
>> code-name will be?
>
> meson-g12a-g12b-sm1-common seems a bit long to me...

+1 ... and what if the generation after that is compatible as well ? We
extend the name again ? Such naming scheme does not scale.

meson-g12-common.dtsi looks good to me. IMO, The fact the sm1 dtsi includes
the file is enough to understand that sm1 derive from the g12a/b

>
> We don't have naming of the future SoCs, since SM1 is only available on
> prototypes yet.
>
> Neil
>
>> 
>> 
>> Martin
>> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
