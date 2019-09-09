Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64F2FAD7BD
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 13:14:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2mV0h1zdJq0TITccdl6QC50fe1MavqAl8EF4PAmSeLU=; b=g+8ARRjN1X7ypn
	/z5DXIojy1eC0GGxtrdbcXe3BIIwN+3DPnpanzqFTFS92MkA5FPqPyifIazJfW8XNZuAfe7yJkLHH
	ARBoz6EtWfCbtwGjDUbZj+89ooIU5CGD63oss82ippYt0pjNJJf/p+UW0rldncYoHiXzyTyel6km5
	yHoQQoD454mAu6gST2R1QWeTHnL/FWw9e0bEE8I6urabsnQJcRbKAcUnbV7ebLAzBSMEabpUzCzkF
	Ecm9p24wQNgWBf9MKTF8C20OW/KTEyVeaU1I5wVV0Fl1yxmkWpyiyaNjVc8sUyf2T77YDQWPo/RTt
	LOl75TmTeOIqBJ0k662w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7Hcj-0007wv-SL; Mon, 09 Sep 2019 11:14:21 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7Hcd-0007wb-1t
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 11:14:16 +0000
Received: by mail-wm1-x32a.google.com with SMTP id n10so14183891wmj.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Sep 2019 04:14:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=x4n6x9/qmmEjTTfyMxaFAIZOc+x6zgwe1HZT5rXoAW0=;
 b=jmPhYdOL/Zxi9Qz5vYmk68b3cSiHJfLO4h07ekQYZ7UefcH13kMNa5NCQkZPcz7IFj
 RBtOSND7FhodJf5EobnGmQoh7BqHBn/EgfMQT0opwbHi8hREbqRm5gbdgX5HgxZyEWaW
 iImLvv0wzHsaEBx8hGfHFvRJ4wJYdF9eI8ZXVOMs9CPsFsmVoyO0sHbf5Vnm+azs3hxG
 rqz65N9wmXtJ5OOqSgQsPtid3ubHRszYpq+uKARW+hMVU2KwPCMC64cXQvDrtA2OHbui
 R/SFce0PYrqsbbQ2Z89hDYwru4jtBwvgn/KWC33/afLcVMISX+IhggznBQs9Gs/GhLsL
 x5Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=x4n6x9/qmmEjTTfyMxaFAIZOc+x6zgwe1HZT5rXoAW0=;
 b=Vooqgy0HTOR6iWEA2ucxGY91NqV20KHHKINNSfHUpgdMkpCBp21IuSqcrUMvtKQKvG
 4noVL+N5kUQlZub5WPTox3LfCHtWTRErpka5efefrBn1oq6PGsCm8900LomIxlKBWuw3
 NgnsQxsCiQGgxGY/hp+5rGCRhhp4BdTZegpLEpzmn5VwDGZSnzsaLBgw4g9kVHZxn7MV
 WCbCnV6XjcQa5MNtAJZ8nZ9V5qoeJifXNXIv2H6F1YamYuVQg8U+FRcyEW4TDYGG3/2u
 s99jfuhLTiQ3m9lXEVvv2thk/KeYjnDba4gDwLOE+T7D7Nq0/SeIuHLkQ92WCnYY10d6
 n3pg==
X-Gm-Message-State: APjAAAVj+60nAG/3/YyjgbDDpSZoOncbM6/XFJWDruZcDQF93/DcE/4s
 C/RilhgSgCI+P+j0dbhpD78dcg==
X-Google-Smtp-Source: APXvYqxZj8SqxMjLqHToVcM395HkhShweXt497/dFSmolXMFHfS1yWHepdCWoK4iNZVD8EKvctaAHg==
X-Received: by 2002:a1c:4485:: with SMTP id r127mr17430162wma.59.1568027653085; 
 Mon, 09 Sep 2019 04:14:13 -0700 (PDT)
Received: from holly.lan (cpc141214-aztw34-2-0-cust773.18-1.cable.virginm.net.
 [86.9.19.6])
 by smtp.gmail.com with ESMTPSA id a15sm8198707wmj.25.2019.09.09.04.14.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Sep 2019 04:14:12 -0700 (PDT)
Date: Mon, 9 Sep 2019 12:14:10 +0100
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Pavel Machek <pavel@ucw.cz>
Subject: Re: Status of led-backlight driver
Message-ID: <20190909111410.dwqvg6b4lgxymn2o@holly.lan>
References: <20190907100726.GA12763@amd>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190907100726.GA12763@amd>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_041415_102863_0BE71C05 
X-CRM114-Status: GOOD (  10.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mpartap@gmx.net, tony@atomide.com, merlijn@wizzup.org,
 kernel list <linux-kernel@vger.kernel.org>, sre@kernel.org,
 nekit1000@gmail.com, tomi.valkeinen@ti.com, jjhiblot@ti.com,
 linux-omap@vger.kernel.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Sep 07, 2019 at 12:07:27PM +0200, Pavel Machek wrote:
> Hi!
> 
> I don't see the LED-backlight driver in -next. Could it be pushed? It
> is one of last pieces to get working backlight on Motorola Droid 4...

Sorry, I dropped the ball on this and was therefore rather late
reviewing this patchset.

Assuming I have read the code correctly I think there are some
problems with the max_brightness handling in the backlight code.


Daniel.



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
