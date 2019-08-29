Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 108A4A2A7A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 01:03:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xP2/odQooWTQSOeBuHJzgAkMMNYNXRQ7IOn7+/Hgsos=; b=PBRV4Lvg4EMVi6
	NXy/Oe7HLHD2+Nw29wFYn4Qezy+2wQbdflMH1rXv3yjk3bJB8U69JzHmcggToQCJsIvZnU5vyVUmM
	0zx2BnwJOmcLoErOXelDH3A+9Rhzs3Meb6zXCdGalb9mQpbvtI7O/JRqPMEZGS9fV7MK4nvlA02i9
	oE96LKUlmRFPmXmvZ4U3prtTknb4+ZkrKSja4uEtDUxLo1BbvMnGIGIA03ksD9/z76jnbzcu/MCLy
	f1IaoiVRqX699TlqDUnkeroL9wt6tbEwZIZ892838TFmMoeWuKCd0CIiUlGsVE2+CUuZskQN18kCn
	JrUECV9LcXB8z8ypB/aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3TSI-0000sM-86; Thu, 29 Aug 2019 23:03:50 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3TS8-0000rP-M9
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 23:03:42 +0000
Received: by mail-pl1-x641.google.com with SMTP id f19so2329742plr.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 16:03:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=9YyWUF96nwE5mShasDD/q0vy2KUwpho+jHAD/EggO/w=;
 b=E3fc+EbesE2EnnhcCkWNr8OeFmAiwB31tGtH4vMsizr2rJN5JhNxgrjqQjoCpMGs5s
 H+KUxXhqWFilM9t6kGV1egEdo6P8RfV3nLFoXUFcn1xJyPw4voXgSqZuRtSrWdevm/dY
 gF4y1CwkCYrculoIZcBjcc+6FfLqDrdODlxFXaBQskrV1KDFp2+WFp7XBQJ1CojMfkuc
 a6Gw8mcXGXMgKWd8rup3ZWQo4YBcJQCYRSSMHmqCj6RGE418K+fIOBytns/WZHqJa/Sr
 2akE1oNntrr98DnrZTp5Unlf7MBdhOouoMnmTgsVlItUcfk1VOQ1nWQ9lRsbL/BdDe6I
 475Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=9YyWUF96nwE5mShasDD/q0vy2KUwpho+jHAD/EggO/w=;
 b=tyjPMK4NWz6H5sXD248zNkv2o3RoMN6ZrgywnKOLg9Qe81Fz8po9HaJDFZMS+VCEug
 Anw67PKKqd3N3vJRoiAob0vWgXiHz01a7G/Pu31pLesTAGYmpJILm0BbMVU39mfjuAht
 Q2d3DvoVkLnifi0gD1+FH4lf9n6/d8fX50za97yql3vloMezYfDrtvkyHxW3giG990OM
 dEWrWJQC+IYklHBh7D6pjMety0qWPOS8BosD/FmJHLlSURykDUPJD3BHcyRHclyjgyXj
 uQzVWc458c+gQyb5gtoMrmgb66OivdlhX08wxkEngyx8pHnI8H63sNcW3uWDTDJ+pWm/
 acYw==
X-Gm-Message-State: APjAAAUIBTbUWvlsBvev9HIuBTo5AP6A8FIkiibzhUTiHk7wfXYg+ERu
 TZuYpgasZ7x1dIqPBer6t/ryvQ==
X-Google-Smtp-Source: APXvYqzsxpgvCbGnvWog6IzW12Snn8x1XyrwztFdkSvGC6j6ot+16ICVrd51JSm5Q5xuqVBXFpTAZg==
X-Received: by 2002:a17:902:7616:: with SMTP id
 k22mr12347002pll.315.1567119819497; 
 Thu, 29 Aug 2019 16:03:39 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id v145sm4676778pfc.31.2019.08.29.16.03.38
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 29 Aug 2019 16:03:38 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: arm@kernel.org, soc@kernel.org
Subject: Re: [GIT PULL] soc: amlogic: updates for v5.4 (round 2)
In-Reply-To: <7ho907rfsf.fsf@baylibre.com>
References: <7ho907rfsf.fsf@baylibre.com>
Date: Thu, 29 Aug 2019 16:03:38 -0700
Message-ID: <7hsgpjo9px.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_160340_720789_098EFFD6 
X-CRM114-Status: UNSURE (   9.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Kevin Hilman <khilman@baylibre.com> writes:

> The following changes since commit 49ed86f503be80aac158a567c4cfd31cf1cd181e:
>
>   soc: amlogic: meson-gx-socinfo: Add of_node_put() before return (2019-08-20 14:53:33 -0700)
>
> are available in the Git repository at:
>
>   https://git.kernel.org/pub/scm/linux/kernel/git/khilman/linux-amlogic.git tags/amlogic-drivers-2
>
> for you to fetch changes up to eef3c2ba0a42a6aa709828e968b64bd11f4aeb19:
>
>   soc: amlogic: Add support for Everything-Else power domains controller (2019-08-28 14:29:37 -0700)
>
> ----------------------------------------------------------------
> soc: amlogic: updates for v5.4 (round 2)
> - add power domain controller
>
> ----------------------------------------------------------------

Please ignore.  I messed up some dependencies.  I'll respin/resend.

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
