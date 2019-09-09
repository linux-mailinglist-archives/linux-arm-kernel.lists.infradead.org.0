Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 233C4AD805
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 13:37:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:References:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=liwHcDZY6+UkbfqMRGpW0kYX+YT+otCZhj/oCG1H50E=; b=YzMCfhXqyYrp9RJzlbdCXgeUD8
	NGXXK0Vli+UbPb2qQXf5glmNmUKW/FiSzr5/vreDlwiGCYH13GKrsmWFnQ61iyIFJzdJ79ED1J6ke
	K8gOSfFm2eqvA/pHLhjViGVNGp9t3nYQuQ5elAmtsRu0Zha7IKZAXuldm3Fnnrf8+azAET/31mTI4
	aE5szIVyJUYgMWiaC4fhXNVwqSP+CX86L9t9UzkUgZ7x1xe+NytUj0HIqflSdrw7ySSrexrxvvLqf
	mMpoh9uMxsG/7PvkXEWBnAFPy58iTsmMwoUrOAE8JuMuYbXNAKLq6QrKojsMIZf0MXhu4RsOrDNAe
	7Lv3rbPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7Hyp-0008Tj-Vu; Mon, 09 Sep 2019 11:37:12 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7Hyh-0008Sc-RP
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 11:37:05 +0000
Received: by mail-wm1-x342.google.com with SMTP id p13so14280857wmh.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Sep 2019 04:37:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:references:user-agent:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=kZoKalqZhhWKQ6GSRTA3V3x0JaPlgytes3e0+INLRaE=;
 b=x5hZJxs3ph0hf3O+XGKV6xBLU0N2rUiRCdn8ru54+LH6HncjkMPO21ZUiZRvZ+1i5x
 iQqmdXYCwvp9mRdj0ZOHvDON2id86CARAXZuw5S6B5MT9/aWelV6Zf3G+q/peM+AnZb2
 tFP5jlieJSsMcjfRlr0PgevczJM83dePs6LXk89UuQNeXsawQIHoIH5jbIG852/LSAZi
 /2Q+djzKrVvz0yyQ/eFy4UqHPjiITn6kuXKfheMpMTu0jw8GUAy1AIynlCstKd2fcN4h
 txz1c2apTYXSVxwLa3dS2xhLaI31jOElfOl0+oG+kphjJsHBcgmcHOs49nMo9nOUTxaX
 1asg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:references:user-agent:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=kZoKalqZhhWKQ6GSRTA3V3x0JaPlgytes3e0+INLRaE=;
 b=cvmZ+iWpXNpv/5/H0zyTH3oGN5Zby3hnl5G0kq4S3GVNbaq1vvjrTFFekqLE+gZDbt
 3HKa7E7TqtzXbUHDioqdUBVs0ftszSHLHtp2PT4sIsdBMgjA+5/47HdM3YvtTkb8UOCe
 PXtTr1Ln6ItR331scjztKrB7ge8kEE2f0UgnifLU73pdzyuXkC2RHdi643DrPs7saSOi
 yeY5e1/2YfDhavTOvw6DgZQlvwXYKR72uBxRidys0TlHG6KEJ5FLrI/1/gqR8ftWQQGf
 +qlUGO9eIURVk2qaXF1hnEWnaa0WAtegAn2fHoNVKwz9Jlw3sMYQ8mK0k6ZHD483SXXj
 HC3g==
X-Gm-Message-State: APjAAAUq5G0stO8t8SE60wWv/ZGPfnOUzlIGl0R7AWwkI5NO/McEDKfZ
 UxGhR50lARzrSTYRzpEWPLbfDg==
X-Google-Smtp-Source: APXvYqxtjd0hUrVCW+o450nTVfK83QWVgMXod2fEY5tWx4EKzD3PxuBAlvts9NPWeGtD+mt4Pidq+w==
X-Received: by 2002:a1c:2ec6:: with SMTP id u189mr17945437wmu.67.1568029021609; 
 Mon, 09 Sep 2019 04:37:01 -0700 (PDT)
Received: from localhost ([148.69.85.38])
 by smtp.gmail.com with ESMTPSA id g185sm27003700wme.10.2019.09.09.04.37.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Sep 2019 04:37:01 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
X-Google-Original-From: Jerome Brunet <jbrunet@starbuckisacylon.baylibre.com>
References: <1567667251-33466-1-git-send-email-jianxin.pan@amlogic.com>
 <1567667251-33466-5-git-send-email-jianxin.pan@amlogic.com>
 <CAFBinCBSmW4y-Dz7EkJMV8HOU4k6Z0G-K6T77XnVrHyubaSsdg@mail.gmail.com>
 <be032a85-b60d-f7f0-8404-b27784d809df@amlogic.com>
 <CAFBinCD7gFzOsmZCB8T1KJKVsgL7WMhoEkj3dRzyqwAnjC0CNA@mail.gmail.com>
User-agent: mu4e 1.3.1; emacs 26.2
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Jianxin Pan <jianxin.pan@amlogic.com>, Kevin Hilman <khilman@baylibre.com>
Subject: Re: [PATCH v2 4/4] arm64: dts: add support for A1 based Amlogic AD401
In-reply-to: <CAFBinCD7gFzOsmZCB8T1KJKVsgL7WMhoEkj3dRzyqwAnjC0CNA@mail.gmail.com>
Date: Mon, 09 Sep 2019 13:36:59 +0200
Message-ID: <1jv9u1ya3o.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_043704_032790_AF20FD48 
X-CRM114-Status: GOOD (  12.33  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Hanjie Lin <hanjie.lin@amlogic.com>,
 Victor Wan <victor.wan@amlogic.com>, Neil Armstrong <narmstrong@baylibre.com>,
 linux-kernel@vger.kernel.org, Jian Hu <jian.hu@amlogic.com>,
 Xingyu Chen <xingyu.chen@amlogic.com>, Tao Zeng <tao.zeng@amlogic.com>,
 Qiufang Dai <qiufang.dai@amlogic.com>, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On Sat 07 Sep 2019 at 17:02, Martin Blumenstingl wrote:

> Hi Jianxin,
>
> On Fri, Sep 6, 2019 at 7:58 AM Jianxin Pan <jianxin.pan@amlogic.com> wrote:
> [...]
>> > also I'm a bit surprised to see no busses (like aobus, cbus, periphs, ...) here
>> > aren't there any busses defined in the A1 SoC implementation or are
>> > were you planning to add them later?
>> Unlike previous series,there is no Cortex-M3 AO CPU in A1, and there is no AO/EE power domain.
>> Most of the registers are on the apb_32b bus.  aobus, cbus and periphs are not used in A1.
> OK, thank you for the explanation
> since you're going to re-send the patch anyways: can you please
> include the apb_32b bus?

unless there is an 64 bits apb bus as well, I suppose 'apb' would be enough ?

> all other upstream Amlogic .dts are using the bus definitions, so that
> will make A1 consistent with the other SoCs
>
>
> Martin


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
