Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1398C192DCA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 17:05:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hb/iCbZm7VasQPEzI1beyAwbBP7xM2LZL2iAVfv3ZXg=; b=oQ3pQf1sPbcR6h
	GpE0Yp3Hdx/G2EzoaKXY16GKNY87f8uailQ7AKyu0AfaDHXNceOnt0NGj+YAejhULNV3KyyRXE5Og
	hxKOx9Y6Dr32NElP2UHLNVDPVBsHJUVbxIJDkg10KEZC9zGk2dKJdoxiefT6b2w/p1NCHMHMkI74j
	hFXMldGHPO7z7Ok0szDq9uvhQ5ieE+N2OdLsFAEsTOvWpnaINsEbHO3uOcW0pM+Pe9H+bxG0odBhp
	X+4KubXv41uvlNjfEi2VyJMt3uPKxwTvvXbI96YvwnLxe9w5fGF6cEXX41jWmDysTDfOZmWxDtXY9
	0ouP6k6WD1NLFYB88rGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH8WQ-0003Xp-9N; Wed, 25 Mar 2020 16:04:50 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH8Vn-0003B7-I2
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 16:04:13 +0000
Received: by mail-lf1-x141.google.com with SMTP id e7so2262392lfq.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Mar 2020 09:04:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pn2KqvNFk/Kh/oN0XHQ6BHDkBBBhQ3u1DOedSWlNkfQ=;
 b=NgTT4k5jlKQgS4xPUfrNeL4uN7tSr+FEjGTa0+opI2N8PJO6UtRhuIb/sfAji0iY5E
 rpYPeEVdAQ+nQvJJF5LweKq2TJ1MRLDae7RaM6LxnVdeeulKZjz1ZsvXv8uVrZ1V3THB
 uSYPP1p5vjzUNLwlKM728XMoTGFMLF7FmKOv4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pn2KqvNFk/Kh/oN0XHQ6BHDkBBBhQ3u1DOedSWlNkfQ=;
 b=hILFfVlQdRFG146FaNVllH1cx9OJx4VVEM1oTDGlXR6Fn/ewBVdcahrIbM0BtudwIj
 OSP+V7MUlGeozy1SXaYEaoi5ipw3X4eVVS55/iAgVsrcXXk3s4N7JeAZUzKZYNGYb1MS
 iDcRoc0iKy/kMEDY1FAROGx/m97NNv95bblCFLfxdpXhztQ1xgZUwIByGc7lbKvRyqog
 6Pi+mEoM/6lWDkVtKbVQ4xG/hy6UenxlqkgMlm1rGBiQBuPABwwxxeCpKqXVg1QlNrNW
 cds+CYSsI6ybYTkKG8ITNX9197vLR0LAw7dZ4K5T2wwF4YOTFrEU0vFqBHOcZic71tb8
 Wo2A==
X-Gm-Message-State: ANhLgQ0ufDVMd4/9UQp2hCHqMesbr7/kgvZ1H04dsYUpJSlCiaz2fOAO
 ydQvdtf4ZyRNyZSZI0auIetQE8Pn92I=
X-Google-Smtp-Source: ADFU+vuMP1M8JJIHd2qmPip9LIbAlY1TRPUzkJP9+5cTyawlJuhIyUkNQDTfmMCVSmYqY8jCSrnP/g==
X-Received: by 2002:a19:ad47:: with SMTP id s7mr2802435lfd.165.1585152249059; 
 Wed, 25 Mar 2020 09:04:09 -0700 (PDT)
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com.
 [209.85.208.174])
 by smtp.gmail.com with ESMTPSA id v3sm4704994lfq.16.2020.03.25.09.04.08
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 25 Mar 2020 09:04:08 -0700 (PDT)
Received: by mail-lj1-f174.google.com with SMTP id k21so3068887ljh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Mar 2020 09:04:08 -0700 (PDT)
X-Received: by 2002:a2e:9216:: with SMTP id k22mr2471412ljg.278.1585152247655; 
 Wed, 25 Mar 2020 09:04:07 -0700 (PDT)
MIME-Version: 1.0
References: <1580822300-4491-1-git-send-email-pillair@codeaurora.org>
 <CAE=gft7EOALEMUWzoR3+pjoxCUTYWbiXoXY=dXH1BDhS3KwBzg@mail.gmail.com>
 <000901d60295$3acc79b0$b0656d10$@codeaurora.org>
In-Reply-To: <000901d60295$3acc79b0$b0656d10$@codeaurora.org>
From: Evan Green <evgreen@chromium.org>
Date: Wed, 25 Mar 2020 09:03:31 -0700
X-Gmail-Original-Message-ID: <CAE=gft7zqbUnx+BULDD+35z2p1=545=jF0=n6kFXZgo3ZTdCHQ@mail.gmail.com>
Message-ID: <CAE=gft7zqbUnx+BULDD+35z2p1=545=jF0=n6kFXZgo3ZTdCHQ@mail.gmail.com>
Subject: Re: [PATCH v6] arm64: dts: qcom: sc7180: Add WCN3990 WLAN module
 device node
To: pillair@codeaurora.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_090411_629029_BC671FD8 
X-CRM114-Status: UNSURE (   9.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 25, 2020 at 4:05 AM <pillair@codeaurora.org> wrote:
>
> Hi Evan,
>
> I will send out a v7 for this patchset.
> Since I have to configure the S2 SIDs, it is dependent on below ath10k patchset.
> https://patchwork.kernel.org/project/linux-wireless/list/?series=261367

Ah, right. Thanks for the info, I'll check out that series as well.
-Evan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
