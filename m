Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E934629DF0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 20:20:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RbmzGWQmXEo4RtIbPJv076ovppnExz04Jh0JLV0Agas=; b=SttvTuUoa3XtyX
	iIQHYeIXc3Moj6zffWWVKa1ef3NvQjRzcO7WIq2GanPnUAamjDBPSKyTUKgOB0NNMDI8DTQb1c/A/
	WDrNgt30Pw/9o+7DeYJDGWytXuZptcjuDSC1qoZBj2SFoG729u6mQ3/sdDTU8pVGyNxgZkh7Nb4g1
	JiWbLiUnKxohhDSdKdktU8+bvMHY/OjC8Y4EFmDRoMo1KHc/AtRHT6+H7vkMPY4sXwKHOTJbVk4Iq
	yDtZKtNSbSSmPPaPnm0c5s1+XzdVEPplVAcGCehMf2TfJd9U1oKuI22teJYKop259fA14LpTOPm5D
	PgR1Zuq8rNsASNOynkAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUEnO-0003mr-Pm; Fri, 24 May 2019 18:19:58 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUEnE-0003l0-Oe; Fri, 24 May 2019 18:19:50 +0000
Received: by mail-wm1-x342.google.com with SMTP id x64so10280424wmb.5;
 Fri, 24 May 2019 11:19:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+8J7+u+08zw/YayuZerzF4YvJ/C2JcgVQ3UZvTM8GdY=;
 b=fLbTFdXK/qHCokY3RRGYYjK9b5BKrl51TIo5xcbU/V1w71Dwmb7nnguqE/LlutxG0X
 jFWSeN4YebgtkduKqxhKCmUhJN71XPTkHNuphOwT+PhHlXGKEqoPjqr4vDenJW+pRhSr
 SwbGlSXdsq4MLZIC4tkbWx2U4Q56kzhih8EzIwaxMyzEubYKrtXsuvryQ5CqrEzKHEKW
 NYkdXaA+BQ/6nSc9CrC1OlIMNM5+CkferqlCSyzGNDD0MKPmGAqThxGX6gjZZy15Z7up
 Riq/QbxT1I2YIcTXhIKxqNKGD9wFJ+hN1Fq3s9VHiTRIJ95MEy/gHTjuhJzAFJyI2S6s
 oooA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+8J7+u+08zw/YayuZerzF4YvJ/C2JcgVQ3UZvTM8GdY=;
 b=r7Hr2hph1LC7HMDF+QjgdlGWoX3pivpGlyHRAxs7x55dfP5zpprZKS5Vz104ny4oyM
 5yl/ycCZGu132glm0UIEUkPGEAFTudpE5OlMA0AzHtuUrKzjzfJwYWYD9GKoF5XMfk+9
 l4HrRErbZ8NtE5fqZzBIpWWZ8g8Jm0HBK64Gre90m3LqkVvke8n7lJAFzJwhNKNrx3dr
 s1cwzNptX3BnC521tTygHCF6cV0BsGSbFix4g6mIUzfTOQGALjzjGnt3KGKlm5wKNZIB
 ECKWeURVAiyj6clCIe8Nxf/7bknXdVNchhAH6i9F7s3g+ruNbtIPmfA8KWY6naLTYV+v
 nIDw==
X-Gm-Message-State: APjAAAU+QEkE3ajjSu3+bAWkwljNTjnhvcSiHZxgT+L8HhcTtStscH88
 XtNV9zzjoSZnUGiA349AQ/RHk5pg
X-Google-Smtp-Source: APXvYqxqHSt7C6QxdYYFU1OJ2baCwFXbx4oAQnj+bTCBMrHIlPHQxmVND5il/ViRVFU8xUfrGuis/Q==
X-Received: by 2002:a7b:c40e:: with SMTP id k14mr895213wmi.114.1558721986483; 
 Fri, 24 May 2019 11:19:46 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133EE7100D0AA8776F4474B72.dip0.t-ipconnect.de.
 [2003:f1:33ee:7100:d0aa:8776:f447:4b72])
 by smtp.googlemail.com with ESMTPSA id i15sm3181831wre.30.2019.05.24.11.19.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 11:19:45 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org,
	khilman@baylibre.com
Subject: [PATCH 0/1] ARM: meson8b-mxq: better support for the TRONFY MXQ
Date: Fri, 24 May 2019 20:19:35 +0200
Message-Id: <20190524181936.29470-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_111948_851004_72DDC29C 
X-CRM114-Status: UNSURE (   8.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 hexdump0815@googlemail.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A while ago a user asked on #linux-amlogic about the state of the
TRONFY MXQ in mainline. I did some research (mainly downloading an
Android firmware image for that device and looking at the .dtb) and
updated the mainline .dts accordingly.

I kept this patch in my tree but didn't hear back from anyone with one
of these boards (who could actually test my patch). That was until
today where I got the following message on IRC:
  any plans to submit your latest own version of the meson8b mxq dtb
  to mainline? it works really well for me and the one in mainline is
  too simple to be usedful ...

Thus I believe that this patch is finally ready for being included
upstream!


Martin Blumenstingl (1):
  ARM: dts: meson8b: mxq: improve support for the TRONFY MXQ S805

 arch/arm/boot/dts/meson8b-mxq.dts | 139 ++++++++++++++++++++++++++++++
 1 file changed, 139 insertions(+)

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
