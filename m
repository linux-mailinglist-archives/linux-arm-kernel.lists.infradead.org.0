Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68B651F457E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 20:17:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DyQH+CiHZAI4zitl/MfTkQrGrXPv86bdhPx+92BemmA=; b=FAa6sxsJuynBjw
	8RLNoSk3Yac6iiRZT4BJtD68IEZQNE1uAJm3wfnQh0/uHSMAhHZ8oqQVPGLUtw2T7XET70S1H35wR
	fWpjKsjHSgNfnvoicy8u6TtI9i57rF9eC+tCoGjP/u/ODmpI1gpU4c3jQJZb2zqMOISZ6yTJKvh6J
	8pOQggRf+m3KLSESWdnydJDqD1R3lpp2QifYAJJZr1sdJbdUz5j08kdzGg8vjSNNa1FP1A2j5HC5I
	DpUSxmQNJ2RkNdKiTig1an6rMbdulNwwZPhOyh7mz8uYCLCpS2Wu1lOPXWtAa1SS/5Y7s0pIJ4Igl
	4swH7lCKFi5QFs6Fb9KA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiioC-0007j1-Vi; Tue, 09 Jun 2020 18:17:13 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiinw-0007hJ-97; Tue, 09 Jun 2020 18:16:57 +0000
Received: by mail-wm1-x341.google.com with SMTP id k26so4103113wmi.4;
 Tue, 09 Jun 2020 11:16:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Ug8wVISZ12XWMBvX4HHfCm0Fc+Zf7t4MD5f5/8sqw/s=;
 b=aO1nwJ4j0QobhNHEzgQZPBk/MtjQ5+6OjtVmG/ySo4zqByYb+/ekvWrbJg4WzX9ZJY
 /yl3MaUYY8i+0jByrV8k5+GXrRGgSjnvFRctKbNH7aps+d97KS6NYURBz/1/C3Io6U1h
 W3rWAyB+szhELBy3FnhZZF3ILg+PGEEKLfXnR0ArptM5dYaomVp1X8QWGprM6oPG9hWe
 62odnXYw+OmDgiPQgPLig5QSs5bOC0gvs8tGXlcB/jy2ySj4gsgF1sIFqa7IwumGfTSp
 vkOQ0BKvJrSY5SD83Jx1gJ4h642264tiLIO3jkKWPDsni6NTRfxYHgY0a7INa4EyzvZ5
 IU3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Ug8wVISZ12XWMBvX4HHfCm0Fc+Zf7t4MD5f5/8sqw/s=;
 b=XsENwsMaT12dAPKNoaSw8n4enPenIk4qTizLjo9ImeADZ7aYFDTdkLK9rc/NBrbcwY
 C927c/20ihhFYG+4+Ju9g371n4XHL1PRGl52oqw9kxpeI8mmN6jbpuShFMZvDeVd14H6
 HKjUoF9rhtZ7lEg6nOu6Y81DVbnDtql+6EODGF5cXtCbsFYMaM+3M38g/rQqQRnvE7vA
 3LeNJY5GhIj31uvoSez4jYex/idamh/yZjBnRryu1Jb6FethLcv5sPcPw5IGA/PwGKjs
 tlxfLDlia3YTTeiwmJFqeC4gfRj7FtI6iWR491GTadBOtMfrzDwH37sieR3Hc8nqVFrH
 rEnQ==
X-Gm-Message-State: AOAM533eBUDXM/+wwljK20WvzEyC6vGYxfApbG8FuaE0WMqJwPH5L2IB
 V+/DOjWoE52pHaiz6mh8nMM=
X-Google-Smtp-Source: ABdhPJxOL4Ecmn0J0+sDHkxj1gGfa8vi3rcCIlrDSLzWe0OKpWBizVJBPiBgM6xRFNZZy0uAqRJF5g==
X-Received: by 2002:a1c:544d:: with SMTP id p13mr5596028wmi.25.1591726614810; 
 Tue, 09 Jun 2020 11:16:54 -0700 (PDT)
Received: from [192.168.1.3] (ip68-111-84-250.oc.oc.cox.net. [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id
 b8sm4705442wrs.36.2020.06.09.11.16.49
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 09 Jun 2020 11:16:54 -0700 (PDT)
Subject: Re: [PATCH v2 3/9] ARM: dts: bcm2711: Add firmware usb reset node
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, f.fainelli@gmail.com,
 gregkh@linuxfoundation.org, wahrenst@gmx.net, p.zabel@pengutronix.de,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>
References: <20200609175003.19793-1-nsaenzjulienne@suse.de>
 <20200609175003.19793-4-nsaenzjulienne@suse.de>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <1994ce6d-0599-3203-b512-a4e93528910b@gmail.com>
Date: Tue, 9 Jun 2020 11:16:48 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200609175003.19793-4-nsaenzjulienne@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_111656_315487_934E3E77 
X-CRM114-Status: UNSURE (   9.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, tim.gover@raspberrypi.org,
 mathias.nyman@linux.intel.com, linux-pci@vger.kernel.org,
 linux-usb@vger.kernel.org, andy.shevchenko@gmail.com,
 lorenzo.pieralisi@arm.com, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, helgaas@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 6/9/2020 10:49 AM, Nicolas Saenz Julienne wrote:
> Now that the reset driver exposing Raspberry Pi 4's firmware based USB
> reset routine is available, let's add the device tree node exposing it.
> 
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
