Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA90911E8B4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 17:51:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=exYbRbe9Pku8HMUU4b3AAOws7Si9/+hx1vrzk3yQhH8=; b=Iug2LZk7srTMeV
	w1ibFpvEAFy7BZ1ZfZGbGP8TU8nrYDzkcqZFzU02peAoOxRadalUKMmJiqUPDG/nuYECnjWGlxojU
	Eiyo+Ys8QIw88UqmtXOuihgAR/Nwn+dyMkInLLV5wG5cMju/7Pq4fwJB+cUmeWIKPZIuqhZvkuyAP
	JFsAqssoc5kb1v3yA+I/IzEghXqMWNc99/nGypBSwz6ke80Eq2uokurbWE1f9Z42qvNFdQnczbTCr
	WCsXIzG0pQJYymf8adXyWIlNShbktxsfd3GQ6/kOkJQnf5bDU2jBJYzB9ndzkwXh7IIqUq79vUczz
	qpJ8Dy52bADKgZWHAgHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifoA9-0000Zk-0s; Fri, 13 Dec 2019 16:51:33 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifo9x-0000YD-MS
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 16:51:23 +0000
Received: by mail-pf1-x444.google.com with SMTP id 2so1745383pfg.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Dec 2019 08:51:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=CAKYbgJOuPrQjZzMU15duDzEPoqOHPryHWVB0LlLVJ0=;
 b=Y9roHoe4knC/3BeSYJfMTn6bay+pT2YhyVNHvcWdl3A8J7dp63no9Ekvt1JsYnoaHY
 vixMt2a9ZIF+VpZCiLfqaF2+Qi91TDmH48MdsevifKtcEMPwo8ThbhsPJtVU/DX3SPGT
 hozgRBw67+xOvh61BGiu/pj8aspFRnxjXdEAx9WReUQNZcfB5mw4371fWOrp/1xZSa25
 DjaByZ9CuvGnurGZFRES5Thm6CY+r6na325r5TRh9PVZDAykJPzB8gcpQDig6tzpk1nQ
 gE+1JvbnCl7LRzMaO9F7wvvv0XpXmTLwYcpXgri3ros2x8HNdTjJkIbRG9NX/W5AcVjP
 BIiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=CAKYbgJOuPrQjZzMU15duDzEPoqOHPryHWVB0LlLVJ0=;
 b=Wc0B5vPlnkCCtDIStjDoGjV/ensP3ZVxYSt6YV7yUJgazEFO3eGgt0rL4bt/d3Pm+K
 X3df1g02ZurbIsD1vOR42W+Dh9tRZMtQhTKbTFvbLFTWzYdlaJvuFAPXOBaVmvbKvsPy
 2aCgYb2tFfqTD7FVpVNEkoCZetJipJiKdmxfkjMKSxlO8+RzlYZAvHJg3OxXgTWu895d
 GypIIB+8zO4mzAM4m2pNbYxMP259TLWviJt8/Yi2v3ZMpHWoKHOvmPH9T8cZeYwHB1gT
 hqwh1D++Kuo31LMNkiGTgKumzmuezQC3zr1sd26t7O/CR7eL8T8V811emt042r9906e3
 LeAw==
X-Gm-Message-State: APjAAAVV0J+VxW8l+Exel+gs0Z9cbQnr3ixUsx3XSEWU5OfNKKmSvDKE
 NxdGLLZOcCq5zVm3NpnRi+OP3g==
X-Google-Smtp-Source: APXvYqx8c6YOAASRXq1y4Uky+FLljcRzDfb1EqKwF5yKxzGUufqLyOLiT0Js4vaXwqrz7WYzNKz0zQ==
X-Received: by 2002:a62:5544:: with SMTP id j65mr381415pfb.121.1576255880888; 
 Fri, 13 Dec 2019 08:51:20 -0800 (PST)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id 91sm10649806pjq.18.2019.12.13.08.51.19
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 13 Dec 2019 08:51:19 -0800 (PST)
From: Kevin Hilman <khilman@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>, mjourdan@baylibre.com
Subject: Re: [PATCH 4/4] arm64: dts: meson-g12-common: add video decoder node
In-Reply-To: <20191120111430.29552-5-narmstrong@baylibre.com>
References: <20191120111430.29552-1-narmstrong@baylibre.com>
 <20191120111430.29552-5-narmstrong@baylibre.com>
Date: Fri, 13 Dec 2019 08:51:19 -0800
Message-ID: <7hwob088zc.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_085121_738059_7BC987BA 
X-CRM114-Status: UNSURE (   6.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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
Cc: linux-amlogic@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Neil Armstrong <narmstrong@baylibre.com> writes:

> From: Maxime Jourdan <mjourdan@baylibre.com>
>
> Add the video decoder node for the Amlogic G12A and compatible SoC.
>
> Signed-off-by: Maxime Jourdan <mjourdan@baylibre.com>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>

Queued for v5.6,

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
