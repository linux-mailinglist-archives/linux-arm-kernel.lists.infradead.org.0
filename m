Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FF4C54FC4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 15:05:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=45Y3N0vSfzr64bwEVRJDMd+8J9rT6+E43oVu48SG5Xw=; b=a719V+mYzePzm8
	Qj9BulonwyJdfyFwBCnUJDLFx3K+20Q4O7wyol3altxEPJBSQI1JT+gdnoswkBzV9bFNx1m7Jz0cV
	A49fyXVVgO5GmMhMEJMJQTykAjmJECNWrYrtpZttzT/+iwCrbgXnOXdYXvQWlRYgSPJ6WkPwpLdVU
	Dm94eTObGbV92GJoG1H+oqq8ivlCFfX5w/y3F+NI92r2L/u+A3nmhVThuMhJdi1d6AXbtHdDW1SrW
	I1UqUPkOitm5SA6Q7pKS4/l78DAqQtxsbsJvMXck2yQhE/3d4/CIvJsWpRMrElN4OU9kKJMkawxOY
	Yj2t7N1h8j1+gwExAHbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfl8w-0003Ih-8c; Tue, 25 Jun 2019 13:05:50 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfl7h-0001KY-0s
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 13:04:34 +0000
Received: by mail-lf1-x141.google.com with SMTP id p24so12567852lfo.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 06:04:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=E0WVPESqitHtnwVEO8ENtoD+KDQQJwVcJRqu49CfcI0=;
 b=LkV0XqFe9JldWfAXCRgTPsBw4G71SdcC8K/xQ8lQWLIO5wfSGtgERxzXU63qwWR/KR
 K5tpHiV9V+n6BLlcZ0JD3z8lqi44U3u9qu3t/yLhODXGmp7Zau152ashDMNxzoAC7J0U
 kK9wvyQ9G54sv3ZQjIc8MV42MHEAajEijAsFXiXarhxyo9PKF3rOdmR4ppGXp8WvhZyy
 gLWutEYQBiuWUbs9aFfidlH1AETCOi/1znDbNyiDZ4/Su72t+Z1KcRi4fgiFy12y9aBr
 P2KErkHAWSFpqlU4R0iAH/llagiHk9yFcd8RheAyN1vlRjebcSUJQs80dScz2C8aGqfR
 gv5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=E0WVPESqitHtnwVEO8ENtoD+KDQQJwVcJRqu49CfcI0=;
 b=P+z1S6otqTHL6pUu/gw2kXYNwmpbDlEB9AjSjovxeXOBDFUwzYEw/E2vFHKizFK/+d
 ZjliZ1fXFYqZogHP+u4AxK1t0esBBN3SMkaLhADlXl0xQQf1REHXydatvOVVrItMQ83B
 EmaYsPhNou77mDb+3QbZXYwZdJZnW4hKJgeV+YH83FILSimwZIcJqr/zGW1bVw+YDjLu
 M3OyMYjqIWUD+klpxoReX5JXVPt7X/cKvfaj1rE3rv45QChzaOjvnpjJH8OzxDfQuO3b
 DkoiA/KiOBeAcNuWJLrC1CpyT95reWSVi94QGrlmoOoiPTin17DWTwiV+NRlc6fDw1Gl
 Py6A==
X-Gm-Message-State: APjAAAWi5Ojql3CzWuHXsMRSa2D4YoDLzs+lX3OMupIwi/ShXpohebiD
 rmHfTK5o0+9yru7ZdBB9OrFLlA==
X-Google-Smtp-Source: APXvYqzzLTsSme3uT4viyUDPKUNkYrfspoce7Jz7uazKE3ifrjOJMuWlOYQZiBszxxk0b0ChJIXPmQ==
X-Received: by 2002:ac2:4c3c:: with SMTP id u28mr45478464lfq.136.1561467871183; 
 Tue, 25 Jun 2019 06:04:31 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id z30sm2246595lfj.63.2019.06.25.06.04.29
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 25 Jun 2019 06:04:30 -0700 (PDT)
Date: Tue, 25 Jun 2019 05:17:53 -0700
From: Olof Johansson <olof@lixom.net>
To: Simon Horman <horms+renesas@verge.net.au>
Subject: Re: [GIT PULL] Renesas ARM64 Based SoC Defconfig Updates for v5.3
Message-ID: <20190625121753.hoytepbhapg55ed5@localhost>
References: <cover.1561105600.git.horms+renesas@verge.net.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1561105600.git.horms+renesas@verge.net.au>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_060433_103821_A7493ECC 
X-CRM114-Status: GOOD (  14.69  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Arnd Bergmann <arnd@arndb.de>, Kevin Hilman <khilman@kernel.org>,
 Magnus Damm <magnus.damm@gmail.com>, linux-renesas-soc@vger.kernel.org,
 arm@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 21, 2019 at 11:16:41AM +0200, Simon Horman wrote:
> Hi Olof, Hi Kevin, Hi Arnd,
> 
> Please consider these Renesas ARM64 based SoC defconfig updates for v5.3.
> 
> 
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> 
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> 
> are available in the git repository at:
> 
>   https://git.kernel.org/pub/scm/linux/kernel/git/horms/renesas.git tags/renesas-arm64-defconfig-for-v5.3
> 
> for you to fetch changes up to c24f6886b2ee321b50543d3683573689a1817336:
> 
>   arm64: defconfig: enable TYPEC_HD3SS3220 config option (2019-06-12 13:57:08 +0200)

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
