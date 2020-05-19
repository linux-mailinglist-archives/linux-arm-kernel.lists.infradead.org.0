Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 655CF1DA533
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 01:12:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kDgnoA67IBP1OCsLnB43qDQo5r2mMKvJY1C/5Qf0TFU=; b=lfdNnLJuWY4ZSV
	dOmw0MDCaRzAEpwC8x+ID5iH7VJBp4Si1TMb9Z0FHAFBvmbosGYJEvuNT6/qJvlz4v0bFYAeIQSZH
	q6m0WSvFM7nQQ3xAcYUjkB6mHJ4jCTCF3PB7zKaSFFLNeY4A04eKWY0s9x65Ot4MQueHWM6hcUvCw
	OMKCivQztLj3D1dsHjOGhRNfE2bhM6jibo8kF1OxsrKHU7WOmG/YFWyxmKzsl7VZCisyZ+Yefloau
	f47a3i1t81NGy4NQHYo067KkoFVrGyg6L0D1bBJKNhkj4y3aREUhuWFZULXJ5ckHgF5yMb1HGMdJr
	JdVHYaYfnBDelxhcpJZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbBP2-0005MI-Is; Tue, 19 May 2020 23:12:04 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbBOt-0005LL-NH
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 23:11:56 +0000
Received: by mail-pg1-x543.google.com with SMTP id t11so556454pgg.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 May 2020 16:11:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lx7UJrQLBWSojDrUx+gUmzxXfR3CRe9hyj+Wu8TV59E=;
 b=A5oPi8I5sC1vfxsrl1SRotsn0XbQlnU4l+EniyKtzY0siFWyg6jLea3qRNwgDiFZd1
 z4NM+aZAM2If7cQMOkmhbi2//3CMrdMvRKIQ3xDem4GqVU5elpaHvRgiz2O9D81+ief/
 G6ffhFeUe3LKqzIj1In5sAXgCEd2hC5dXQ3Vft77LMk06G6RwqXVLBYke2ooTXHPa1IZ
 Xjy+l7Q90/SKSaW6sujHObI0N36jWxj2DNqEorK3b0K4lNavJZUYOQjrCE9y1XyM13rc
 Ai2IzZAgKw1eYrYF6wRtZQcKTcgmDsLfK6QHfUtXsIWuuK5mk3izlz61DOk8PZH+OF32
 1v7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lx7UJrQLBWSojDrUx+gUmzxXfR3CRe9hyj+Wu8TV59E=;
 b=YUuKGtiY1cLL+KMvTrrSHMvuULLlLKG/hQMaPKXTA5L+EPoOanB4BFyCiyFTPujGSO
 Vqhgmit4jKzRzBIISJsVlYERk3LXc0ul6Nmbr2P4idIhl4wVB4g/6JtWdHlTddHjxuxS
 HHYDiy8NnvAbfmJJbsLfNsjhuic4MxuWuDS1K39wcMaY+4XdBfsQjWbWLWx3rt1npf7q
 CzO3e1ST4ADcxiAyVoGp8uph4j9GfbBM/E8rNSc5JjM3iHVUNv/L0tSwm/3kXxtlDM/p
 chOhES07byOLz0lgROoogq695SzMEyDff2jkImhfvSkVpxClshHSbj6a7uYwUMxyC4aB
 ILsw==
X-Gm-Message-State: AOAM532X7CBVFsH25hP/tepOcoOsTX0RCPjjiOgg6Rvl8H2Pt08mjnNW
 iWp1JOU52gATdNEVwzYou7QdCA==
X-Google-Smtp-Source: ABdhPJxsn0827XE2LOmPwBfl0cphgvNpH894AcJ7kRUW9DLwqSEUoaYm2yWR1fAAETXit5YR1DXd/g==
X-Received: by 2002:a62:4dc3:: with SMTP id a186mr1327386pfb.269.1589929914830; 
 Tue, 19 May 2020 16:11:54 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id 192sm426908pfu.182.2020.05.19.16.11.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 May 2020 16:11:54 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: linux-amlogic@lists.infradead.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: Re: [PATCH] ARM: dts: meson: add the gadget mode properties to the
 USB0 controller
Date: Tue, 19 May 2020 16:11:53 -0700
Message-Id: <158992990571.5859.7805491457862081284.b4-ty@baylibre.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200504195105.2909711-1-martin.blumenstingl@googlemail.com>
References: <20200504195105.2909711-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_161155_757896_7F428BFA 
X-CRM114-Status: UNSURE (   9.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 4 May 2020 21:51:05 +0200, Martin Blumenstingl wrote:
> Testing with a USB RNDIS connection and iperf3 gives the following
> results:
> - From the host computer to the device at ~250Mbit/s
> - From the device to the host computer at ~76Mbit/s

Applied, thanks!

[1/1] ARM: dts: meson: add the gadget mode properties to the USB0 controller
      commit: 9530dcf1082da23438ee557291c07d475128f63a

Best regards,
-- 
Kevin Hilman <khilman@baylibre.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
