Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFD618AB0E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 01:21:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kdQ1SPXiPEw09BOmp/P6a2xzk2IrHiOpLlalL3e0+1M=; b=soBZbvf8/QwX0e
	Gp4kH3/sivwYKJ33YgI4O0Vd2+3kXx2GYxWR7wbrFFKxRz+IAVq5OEgn+Ttwv2xcoADDR2sc+sQd/
	6pMQyGGXpBw04snVTVW6+uNVtFJCZGlsFOhHztdTfgx49Jlo/SWujYijcwaa5HIaTUHm4S4aaDBU1
	0pG3/t4Wo4ZLEST9gmOReCCWPDPuPXbU/51f6E9Z0vjFxiiEbbotRw+45a8al7fXvXZgGqxMYkCXV
	3NmbrYYCH8B/ikEqHddrzYrrNjl3peyYhRpsRCC7bIGJSSSfYle9v8nnieMihyDwabYym/2NUmTNS
	yhQ70ZbrCQ2xIEv2a/EA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxJdF-0000gm-MC; Mon, 12 Aug 2019 23:21:41 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxJd1-0000fQ-1A
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 23:21:29 +0000
Received: by mail-pf1-x441.google.com with SMTP id p184so50476068pfp.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 12 Aug 2019 16:21:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=g+l1+DGNELUOAq8cjxdJkWxhS0t5z7hND686YF94qa8=;
 b=r0ASmmilpv/FWZ7l/cQ2H+o3I3b7VzCxZKHWRWFFmeM1xUe4Z8TAViBrzPCMv2tCMW
 QfAXafIeqKxxZxwAFTArvKzroHrlEQKwZL869REw4ypPpAamqrJcjW+ldot7c3okYgB0
 E/M5qbir5PQMYxdsvgThXrIAQdu3C4lQMXmrDWZ/+TC6+2fnbAgkrFmhLuPtY265Kivj
 3PKRcJxnt4S4u0KCqR2tJpSv7jl0iHTJkEVp3U8af8RZOLFp9mGPv2Ivd+pSVJ+cuaeU
 lC8tttSeAU1OQKeH/+LHc3fJmVJOSZotUCaKmIKGcWjOakYL2yMk0EnE+ui0vY0JucGZ
 uA+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=g+l1+DGNELUOAq8cjxdJkWxhS0t5z7hND686YF94qa8=;
 b=JrXwfJhIDRZWCWt3nD4GA1iyeI//X78Ayi0B7+J10U0cg4uscA5I+P2Xtumb2E5XN/
 SMLiL3JfjunbHoOtVI5AxAwGLFJ8HeHtk3tP3groWjgOJkCoYwtBFyHC9yoH62wWlgyy
 0cxyQSJJic7zXM8SxCE7Y8XJ9G0o17mVabjYnT8lAfAn9bq/Ffnj2m+wqeeWfv5xFNYJ
 DWp+aeypQ06vCDgMYC4KvV4TgDrwrse3p4WTmvrZWN9vuJKRks/VUZgtEHR86WTRcj+C
 pOlWt+meWZupJNBwZnghCnYv+xRvSSocZ+YuIDxQfd+IVpxswa1d8WieF5zAzOU2zUMd
 mmCQ==
X-Gm-Message-State: APjAAAX/lT8Pue0putcJRtly1sGRmxVy4PHlSoh6sX061x5UHJmASPyF
 f2nMqt4DvFmOiVK9z1n/uxG+IA==
X-Google-Smtp-Source: APXvYqyyhI+uC5HceMN4J/VuKh52YYpjf5nScDIdktyKjduhHJqkAgfV5NDGXSujxj8llYASLi7Qsg==
X-Received: by 2002:a65:5043:: with SMTP id k3mr33102097pgo.406.1565652084961; 
 Mon, 12 Aug 2019 16:21:24 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:14bb:580e:e4d6:b3a8])
 by smtp.gmail.com with ESMTPSA id o35sm100362123pgm.29.2019.08.12.16.21.24
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 12 Aug 2019 16:21:24 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Kevin Hilman <khilman@kernel.org>
Subject: Re: [PATCH v2 2/2] rtc: Add Amlogic Virtual Wake RTC
In-Reply-To: <20190812211337.GW3600@piout.net>
References: <20190808042357.4663-1-khilman@kernel.org>
 <20190808042357.4663-3-khilman@kernel.org> <20190812211337.GW3600@piout.net>
Date: Mon, 12 Aug 2019 16:21:23 -0700
Message-ID: <7h7e7i0y30.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_162127_137208_FD3B5C33 
X-CRM114-Status: UNSURE (   7.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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
Cc: linux-rtc@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Alexandre Belloni <alexandre.belloni@bootlin.com> writes:

> On 07/08/2019 21:23:57-0700, Kevin Hilman wrote:
>> +static int meson_vrtc_probe(struct platform_device *pdev)
>> +{
>> +	struct meson_vrtc_data *vrtc;
>> +	struct resource *res;
>> +
>> +	vrtc = devm_kzalloc(&pdev->dev, sizeof(*vrtc), GFP_KERNEL);
>> +	if (!vrtc)
>> +		return -ENOMEM;
>> +
>> +	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
>> +	vrtc->io_alarm = devm_ioremap_resource(&pdev->dev, res);
>
> You could use devm_platform_ioremap_resource.
>
>> +	if (IS_ERR(vrtc->io_alarm))
>> +		return PTR_ERR(vrtc->io_alarm);
>> +
>> +	device_init_wakeup(&pdev->dev, 1);
>> +
>> +	platform_set_drvdata(pdev, vrtc);
>> +
>> +	vrtc->rtc = devm_rtc_device_register(&pdev->dev, "meson-vrtc",
>> +					     &meson_vrtc_ops, THIS_MODULE);
>
> Please use devm_rtc_allocate_device and rtc_register_device.
>

OK, will update both and send a v3.

Thanks for the review,

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
