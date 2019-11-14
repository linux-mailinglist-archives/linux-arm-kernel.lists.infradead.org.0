Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2BBEFCFAB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 21:29:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JsunhtRM2FR95w6rAJvjU96Gvs3WVBZaMRDlYnEZh/8=; b=cuFAg5c6ALRNqGCZdH1XUw0w8+
	FRaKjMBoBXeQDeiqQ3N9GZuA3Xo1qQ7RXhHA/VchnNSF/k25U99Q4CRRibbqUjfpvACx9RB+SNFqp
	NjYilSnXSKRxql5PzUlLYHGNNSnip9FyBd0EMCUfOOlw5tP2X2bBCP2L5b5vbwh1ETxqxBj7KFStL
	p0PbgqwzSOSTuaPvWDMfeOSFNp7vL+Ltcqu8eqm6XftUZvnRHwg+R3zJxRN4fL1A0RwAUQ3q57IJ3
	yxefbREyK5MZXiKykhagjvEIVYsT0B7/tLh5HSYGZ8HiCSgrOzNN7OS4yiTA0NfOO2hV+NONGFHYf
	8TK7VqWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVLjd-0007Rd-9E; Thu, 14 Nov 2019 20:28:57 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVLjV-0007RG-AA; Thu, 14 Nov 2019 20:28:50 +0000
Received: by mail-wm1-x343.google.com with SMTP id l17so7201529wmh.0;
 Thu, 14 Nov 2019 12:28:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=K5embLHTDP7uNIGocODuFu6GQnCP8W2lQWuJv19zdl8=;
 b=oJCz2v2c5AYVz6Q6H4mdrlmjwMRXJl3QRv58ftEV+PhYZRrrjnkTSLO3STb7ZcfRgn
 N2OLdvEU1DxyXboZFDZpSOISB7tOshCnak0Kmvoql7WD0duVFKIn6dtpQ985JtQEI+4B
 2MoxmgIvBkQoTRhr8/ofs1F7C2qk8ec+NGHsxYFy3RUzbhF4sM4yQB53OiBj9t4uGml4
 7s6q357K5SH9nJ/WCTb+p6Z+XSYUhBFp6S811kDcmcPrOvw8oY3ElY7IUj8IEiGV4xco
 re2tlKjXgS0Z5vYsmtdntgVeM7iIqFDwlsO6N6StStT+9rOh8AbHHMeg/wPi7/SD2Lj4
 AZFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=K5embLHTDP7uNIGocODuFu6GQnCP8W2lQWuJv19zdl8=;
 b=obMDKPdpdlvMQ8mciyiasXaxk3YdDRyx3gqJuuNm98s/zVXZBHhKVXRz5pzwmtSpFs
 z5SmfLjuwTNFU5UxlCzdyC0xGvmUjQ0QRafIwIaPdgjz9lGyxmYAMSFNsOZrsjVkE/hz
 6JRh/a3WfaF9eabzxWEPS5D58wNuO4pLupN/Og2Vzy5G1/dMkbDzGAJFZCTb/oAWLTaN
 W5+G12h2aYscH9kg4Be9ikREsu/ajIttOd6amrUrhYZqDEIwWp1NJeo70D3uvjLh3cMG
 8brBrMgnG96u+GDXHNxaHH2JJL3HoTV00HAqceB/x7sbJRg0LHL/08BtBe1xM9qdaZxs
 8f9Q==
X-Gm-Message-State: APjAAAUGCM+t1qJwlAUnIyqO4II7o5sMfOvVE0z9zz/RG4alu05/oOY5
 r1N9OWiiDD6/2/l7Pg2VT+s=
X-Google-Smtp-Source: APXvYqyKPSnewY1soYVqWA6PQ+RofXvEux3LeOY/J6DXdBuJCVla8oCTl6/tXjcgmRorECdyF75imA==
X-Received: by 2002:a05:600c:28c:: with SMTP id
 12mr9819309wmk.25.1573763327200; 
 Thu, 14 Nov 2019 12:28:47 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id w19sm7276899wmk.36.2019.11.14.12.28.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Nov 2019 12:28:46 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, catalin.marinas@arm.com,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Eric Anholt <eric@anholt.net>,
 Stefan Wahren <wahrenst@gmx.net>
Subject: Re: [PATCH v2 1/2] ARM: dts: bcm2711: force CMA into first GB of
 memory
Date: Thu, 14 Nov 2019 12:28:42 -0800
Message-Id: <20191114202842.32505-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191106095945.22933-2-nsaenzjulienne@suse.de>
References: <20191106095945.22933-1-nsaenzjulienne@suse.de>
 <20191106095945.22933-2-nsaenzjulienne@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_122849_360356_031AFBBE 
X-CRM114-Status: UNSURE (   9.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed,  6 Nov 2019 10:59:44 +0100, Nicolas Saenz Julienne <nsaenzjulienne@suse.de> wrote:
> arm64 places the CMA in ZONE_DMA32, which is not good enough for the
> Raspberry Pi 4 since it contains peripherals that can only address the
> first GB of memory. Explicitly place the CMA into that area.
> 
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> 
> ---

Applied to devicetree/next, thanks!
--
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
