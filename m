Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0C5911FE92
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 07:47:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FzeEF+PrqUPuwYhRmOGk5jlsMR2OeEw3549SH/GVc6c=; b=H5FHSX/yu2O6SF
	mkctVP4AvJf6O1ADkKrjp9lVzFIjgpvGz+fIxYrsUpGe8xuON2vtsweINW0G7wudg6GXiIt+Lq88J
	bjzymnxVVarApdU+VpHmzl2CG0E/OlNHJGyRKtvnRE8gE0qn3f+q4HW/hFcLT9jEG03Iri5VlqJpt
	BrYhdBHXeRRr4b6s4enBW3GUk/qTPQe6DnhBSV9/sDa2TGCx8m0Q+Kk8IOgCsSxWew6bQaAzKKujp
	QSZxYlgl78RZpPlE4NUM+Z46rlP1kgH54u5wcwJJn9U2YPAWRemy8W2qqVELcirUhaJebwAnciJOI
	1fG4Dle/mxFi4rZ3h2Lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igkAJ-0006yx-Bc; Mon, 16 Dec 2019 06:47:35 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igkA7-0006xn-5C
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 06:47:24 +0000
Received: by mail-pg1-x541.google.com with SMTP id z124so3089208pgb.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 15 Dec 2019 22:47:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=endlessm-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=YPHzDwynlmOFdAU5St+7P/aISgKvPX7+uyfwjb3J5vQ=;
 b=Q7/FsZxqSwMa+BzKGhf/87FEkHKFRHq6bnEriH4r/8faI2wq55Pf+hh6Dn/1A1L1hE
 QpDC8Tw2cEi1FMh9isaL5Wm2ZOPxXOZWcDiADyPoncHeRi4uNuQVZ3vevcMF6Zmy/s06
 xmkVNHiSNCCl1q561PMnqZFynvhDCjvRPKlbXzMKMW6IL5ryRPiH7VvsfdkMe7Zfg23b
 ZInoD7zU0DqJdxovEj9bVs8SpG+oMV7T58xRpRHQNmDSFiQ6/cgLseuSCkkXC5Tjb9Rc
 15Kg06QdQIh1L0juCm+0Wblblnt87P6qJKU6kJsjsSXtxS5uEzMSMllQ/53QAInBoJnm
 HzYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YPHzDwynlmOFdAU5St+7P/aISgKvPX7+uyfwjb3J5vQ=;
 b=hzv2HBQDRZQXfn9inZT7MrGjMRr09/lhKCbbkt6U3IYsCf1CDSHqlrtSTUpl9UNLF/
 +fwd3IP5gZtUe4UZeJPhBPEwP4ONGZMqOFA+F2r/t5MKW41U6Rkdl69+7jgzXwRxEjRe
 t//J2CEtJe9TX/aeQrYLP2w9Ge/vcuKp6rv/mUmusPjQ6Gc8Gm553Blie6O/Rr5fFjZ4
 wlEf5VXJcqcUubxyJyFeqFvyUM5ZWbqKOrKEgWYzcY1/MWii1VcMRDk0ZxQM/n3b/bMh
 auVuF7jOqEURCaGWqYg4Ps+j9PyPgOV6zEC8KAaOBKwwXS4pA88SF9rBwR+EPROrCtg2
 bofQ==
X-Gm-Message-State: APjAAAVMHao/ceAROTxm4a10mLmD7OThO/HJ9/hfyCMivEXdNH2Tyfai
 r3Zim5OWOGqsgO92SggpzOqVpQ==
X-Google-Smtp-Source: APXvYqzcXDlL9EfEPDbT8ec8JfIiOjcIeAoXu12dG22SBfYFW7LzFWn8hWSWuniHIINm1Ku+0eA7YQ==
X-Received: by 2002:a63:753:: with SMTP id 80mr15150274pgh.95.1576478842024;
 Sun, 15 Dec 2019 22:47:22 -0800 (PST)
Received: from localhost.localdomain (123-204-46-122.static.seed.net.tw.
 [123.204.46.122])
 by smtp.gmail.com with ESMTPSA id g7sm20758515pfq.33.2019.12.15.22.47.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 15 Dec 2019 22:47:21 -0800 (PST)
From: Jian-Hong Pan <jian-hong@endlessm.com>
To: nsaenzjulienne@suse.de
Subject: Re: [PATCH v4 2/8] ARM: dts: bcm2711: Enable PCIe controller
Date: Mon, 16 Dec 2019 14:46:38 +0800
Message-Id: <20191216064638.5067-1-jian-hong@endlessm.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191203114743.1294-3-nsaenzjulienne@suse.de>
References: <20191203114743.1294-3-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_224723_344889_2C733E6D 
X-CRM114-Status: UNSURE (   6.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, f.fainelli@gmail.com,
 robh+dt@kernel.org, linux-pci@vger.kernel.org, phil@raspberrypi.org,
 linux-kernel@vger.kernel.org, jeremy.linton@arm.com, eric@anholt.net,
 mbrugger@suse.com, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, james.quinlan@broadcom.com,
 maz@kernel.org, andrew.murray@arm.com, linux@endlessm.com,
 linux-arm-kernel@lists.infradead.org, wahrenst@gmx.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Thanks for your effort! System can have USB with this patch series, if the device tree is modified properly.
Here is the question: Will not the device tree "scb/ranges" in this patch conflict with commit be8af7a9e3cc ("ARM: dts: bcm2711-rpi-4: Enable GENET support")?

Jian-Hong Pan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
