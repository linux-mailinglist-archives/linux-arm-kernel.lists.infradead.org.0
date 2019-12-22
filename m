Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC752128F25
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Dec 2019 18:43:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8zqkOdDnygI/wlMxCZngrWHBBdj02eceus3pofvNKQE=; b=ITmjAPxDlttFSR
	28tXofmZD7yIK3iqlXaLcfROBOwX8viKhwqerGFkhUAq29tL9lq0/clKnUBrosDpiqkFi7lorI2PN
	tZ6PxEDyo7iLOmRtmn/MFrU3G8rPxdeyWThxEFsyuyjumekAkJK5ZauTKGzJxAHU444epuHmSbH61
	QQxNGyR/xn7zyWXVRIAqmr/IO6pAyE8ujgRE/0KWEkrnw1fWT7YxcwVvVNcongl1o7q8vbyG5H7qI
	8qGQ7VI0iF8JhNCWpFJPFIFBp3XmJmHV4qkdBAXOH86oONlfQAd+u3sCYLCShcPvfE6rhGUZ5a+t2
	/GCV0wRGrPGzp2qtOWeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ij5GQ-0005xB-09; Sun, 22 Dec 2019 17:43:34 +0000
Received: from mail-io1-xd35.google.com ([2607:f8b0:4864:20::d35])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ij5GE-0005wV-DC
 for linux-arm-kernel@lists.infradead.org; Sun, 22 Dec 2019 17:43:24 +0000
Received: by mail-io1-xd35.google.com with SMTP id c16so10576140ioo.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 22 Dec 2019 09:43:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3QXEBHKU/LB1iiDp/zcMNr6eHfoj8s9pKx9O7xAvz4I=;
 b=S0eX5VUHJVzhKIRHbq5XOMwKV2tNO0262iY4+GKv+6jVpRxlDKJXM/oeQIooJmK8hZ
 W7qCsQi+dxUYp39uor8xguHP21qRAELpo/QtIwu6y9g0XNV/pdhgto2LsriQrImvGEpC
 PkjE1+rIefky6wioRIGv8cCuwQabgpyOVCh20RPUfXZOQ1zM/iom3VFEiUi///T8jMAB
 nEcxnT7eg/Aps5oZ2Ss85cR5xVdPH4z2HNc4tsOEdISEKIG6ORAQUt6wSstv0zlcJdTK
 5WWH31QLiE5uH1tvgeR7NeefMXs2n/k2QKIAZachazi5THrPKLjnEMfUBMRlTsbh7mbN
 HS6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3QXEBHKU/LB1iiDp/zcMNr6eHfoj8s9pKx9O7xAvz4I=;
 b=rLtOUej0xwlLI7ePL6bngL4cyVhpLgq6LLKFE6HlIFF/XaE9EI8bJ+EftGxQe3eSlK
 9gwi1mxJ77QNQENrnlfk07SLwuvvdPWTT4SDX6Z6RMb9MchmOObFuBNNyUGBaQaBey3J
 gxGLZm2EqRMz6/12voGAoeWN1kDwPd/zTDHnZUedJWEFa8nJAkLwmjOXVdozQlfztkyK
 gxwLE6G5jFuwSLSXXLJqyijoFf8aOOo0H6lSOoZvUvYbyxbT3ks33e4UIg0e+lJteJOI
 SEj644xk0h3zmPx5JE+smu83OyOTahQah/uWL7nPQW0WGqRQskOEpZub96hyp2f1WFBo
 ERiw==
X-Gm-Message-State: APjAAAWDoAUJFJkVJhajtG/s3fuCqWPvH01UM3Og/S4o++4ZoUv/Qf+n
 xNg0ZmmvjQbu643yVrGF59Iv3vmqV3IqPYR7qUu193IVphM=
X-Google-Smtp-Source: APXvYqyAeaXEkJ6IbJWDM/hOy+5n4l1ZqogL4zmwk/pJx/2/DUvePrt4k3LM9CtkVCwnS+eeowhFhO2cGyXgOFLfzyw=
X-Received: by 2002:a02:c611:: with SMTP id i17mr21491833jan.28.1577036601413; 
 Sun, 22 Dec 2019 09:43:21 -0800 (PST)
MIME-Version: 1.0
References: <20191221181855.31380-1-tiny.windzz@gmail.com>
 <20191221181855.31380-2-tiny.windzz@gmail.com>
 <CAGTfZH2vqk1R9Hkv4DjO8ktmpHEW+mV-+xreUHPyp6ZT2D7AxA@mail.gmail.com>
In-Reply-To: <CAGTfZH2vqk1R9Hkv4DjO8ktmpHEW+mV-+xreUHPyp6ZT2D7AxA@mail.gmail.com>
From: Frank Lee <tiny.windzz@gmail.com>
Date: Mon, 23 Dec 2019 01:43:10 +0800
Message-ID: <CAEExFWtzMTs9eABBg49wZ=5sBVnFMVpbi_mmh2Z_82B365a3HQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] PM / devfreq: exynos-bus: add missing
 exynos_bus_disable_edev in exynos_bus_profile_init
To: Chanwoo Choi <chanwoo@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_094322_464641_0034459A 
X-CRM114-Status: UNSURE (   5.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d35 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Linux PM list <linux-pm@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

V2 has been sent.

Thx,
Yangtao

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
