Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D50AF198EC8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 10:45:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TN9H4hJCzdOj56F07gjKE3Bdj06qHSJLvH+dYEdMLNA=; b=bTWSUNmwq1Sfmf
	kCej+WYGnXu6vEe1/AMuBaAkXq6DcdgWnXtK2FU3LRwCZbgfuHWFwUr9djyUi2Erb3RJJKrgioaxH
	c9RnzSP3N7ScJ8xXn7ejPiwx9u3d9UVGGoJ1ubNgxyXVjDIfaTyhteWVqzqyS3cWBEj7R4ny7U7E6
	vmCybl4n/5X5nGMZegIOm4WldS4qQtUZbZ0j/iCRM1l0iwfbnMxzDa8QXFswHiuhsti6+bnDCBHYQ
	IAlBAUtAWS24Kl88Ni+c6i5IRevJg9hHOruoqTdlHYiwTEIrKCEOMlevNLwaLx1SrC9/N+OIQzSc0
	jwRUr2V6zRibh15VIDGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJCWK-0006jv-CM; Tue, 31 Mar 2020 08:45:16 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJCVz-0006hs-Vt
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 08:44:57 +0000
Received: by mail-wr1-x442.google.com with SMTP id u10so24822544wro.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Mar 2020 01:44:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:autocrypt:organization:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=QIkmlfx36HGCgPU+aOqGn881RKM1Ep6+aFFH7tFDOhI=;
 b=OosQ0HCKJVJK883tMwqdytNtnisnFVTbVSAv33kEKGcShhT9KahgOg5nt4mCRZDVVj
 GRvYaWlyBOAImJgfKLpgTVPaQwj6uNrL81av2KJsd5R4hYNhVYfrqP5ZFjMitXnDns/G
 UheC/WQVjSWsWXIKVCSWP+MXhC6y5MILsaPphDT6YBIpuPnF4R+gl9YhBVdWLTDzOe7/
 ONSWh3OU63eQdVYH0ykPwoObPT18fbSjiNFKSighxXqcPG4vymeJrBCg/yYInOxBGM0E
 WDfLBaYTIK7LpMkBedjjtid6ENztVz0mUAhgLtodvYMgqZFC5kod5nZkj9aG+CH0n2l1
 M+Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=QIkmlfx36HGCgPU+aOqGn881RKM1Ep6+aFFH7tFDOhI=;
 b=Jx452NsiM4Q0zsL2/R4DNMzPFal5VEljczh7vnMBcRMPLVnfLBMd/HhX0K/KnLgQPi
 Ih37RbXaC9QOo1NaL0ulCv47NFr5PlMAWYPy2YqC9CSNFQeKpfQIo8wNVYySiYOJCnG/
 owdjErIB00q/FNXG+uCxz8blBNFlaHAZSMSxU1Iz83glngXKrtrb7CmRD26ks8tP5U5o
 MPiZaM982UrSchOImw2RgefyNCmhKWXRQa7yfMRJK8UbUioJq/HTd/bTE3DGuZQsYRrH
 m8PNwNSCNUous+6g7GyelBVV1ZV3FhaeIcaDUUt9vjXMB/BQcxBXFah26XnkjuNNm5w/
 M9cQ==
X-Gm-Message-State: ANhLgQ26BOHo0nux3eYQZHM/+lbWFzo5jmWcTWOA+JqAebhzTk1dWzQa
 vDYkuhUJ6SkyORdGRhG1zoViNA==
X-Google-Smtp-Source: ADFU+vuaVOaUoT0zyHX5/tEVtCCmxjG7l+rLMxVL+7kbvA10dfu3T++VV/d1rs7v2dEU+MZhY0m9GQ==
X-Received: by 2002:adf:f3c5:: with SMTP id g5mr19054130wrp.230.1585644293987; 
 Tue, 31 Mar 2020 01:44:53 -0700 (PDT)
Received: from ?IPv6:2a01:e35:2ec0:82b0:5c5f:613e:f775:b6a2?
 ([2a01:e35:2ec0:82b0:5c5f:613e:f775:b6a2])
 by smtp.gmail.com with ESMTPSA id y11sm27059194wrd.65.2020.03.31.01.44.52
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 31 Mar 2020 01:44:53 -0700 (PDT)
Subject: Re: [PATCH v2 07/14] usb: dwc3: meson-g12a: refactor usb init
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
References: <20200326134507.4808-1-narmstrong@baylibre.com>
 <20200326134507.4808-8-narmstrong@baylibre.com>
 <CAFBinCBhk+XvjGODBaNH7tzCfGktYdmk1wED8UC6cYmS3ucbig@mail.gmail.com>
From: Neil Armstrong <narmstrong@baylibre.com>
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 BSwxi7g3Mu7u5kUByanqHyA=
Organization: Baylibre
Message-ID: <aaea637a-4fef-9914-16f5-5b71458bd7e4@baylibre.com>
Date: Tue, 31 Mar 2020 10:44:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <CAFBinCBhk+XvjGODBaNH7tzCfGktYdmk1wED8UC6cYmS3ucbig@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_014456_034233_D324AC4B 
X-CRM114-Status: GOOD (  18.36  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
Cc: balbi@kernel.org, khilman@baylibre.com, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, kishon@ti.com, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 27/03/2020 00:26, Martin Blumenstingl wrote:
> Hi Neil,
> 
> On Thu, Mar 26, 2020 at 2:45 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
> [...]
>> -static int dwc3_meson_g12a_usb2_init(struct dwc3_meson_g12a *priv)
>> +static int dwc3_meson_g12a_usb2_init(struct dwc3_meson_g12a *priv,
>> +                                    enum phy_mode mode)
>>  {
>>         int i, ret;
>>
>> -       if (priv->otg_mode == USB_DR_MODE_PERIPHERAL)
>> -               priv->otg_phy_mode = PHY_MODE_USB_DEVICE;
>> -       else
>> -               priv->otg_phy_mode = PHY_MODE_USB_HOST;
>> -
>>         for (i = 0; i < priv->drvdata->num_phys; ++i) {
>>                 if (!priv->phys[i])
>>                         continue;
>> @@ -284,9 +286,10 @@ static void dwc3_meson_g12a_usb3_init(struct dwc3_meson_g12a *priv)
>>                         FIELD_PREP(USB_R1_P30_PCS_TX_SWING_FULL_MASK, 127));
>>  }
> There is something strange with dwc3_meson_g12a_usb2_init.
> enum phy_mode mode is added here but it's not used inside this function

You are right...

> 
> I also think that we should not pass enum phy_mode to
> dwc3_meson_g12a_usb_otg_apply_mode
> I'm aware that the original function used enum phy_mode inside but
> this doesn't seem right:
> we're not configuring a PHY there
> instead we're setting up the OTG switch so I think we should use enum
> usb_role instead

Indirectly yes, we setup how the phy_mode is set in the glue, and passing
usb_role will need an useless conversion in dwc3_meson_g12a_usb_init_glue
also calling dwc3_meson_g12a_usb_otg_apply_mode.

> 
> [...]
> not part of this patch but should be:
> there's a still a direct call to dwc3_meson_g12a_usb_init() in
> dwc3_meson_g12a_resume()
> I think that needs to be changed to priv->drvdata->usb_init(priv); as well
> 

Indeed, I'll fix that.

Again, thanks for reviewing !

Neil

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
