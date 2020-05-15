Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD69D1D5296
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 16:53:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=g98mc90b/7NmQ8p6QBJCoL66g8pXyHagDz+0nRFc4is=; b=RSIVp5xX7KdEmJ
	6tguP8uMrIkMRUvnC1M8IeZOW1S5Z6yKOys1cz5fi+TfoUOpGmc1AhCv4AxCg9uHQ5atqQKNtig+t
	DY05VsrXICQDHaD+0djCpkEPQwy8QvwkXuMuX6Og9M4k9sexZROEiDfAQrs0IhK6kkUUp0hqp81LL
	9PqTM/Os+Rq7H5t58NMGVZunwnJmSFPT9PKpRe/O/vkYu1WEGGkjrPmzi7oh4nraZ33g9TW81l9aq
	MXArpfStgzfNAjDQZ/O5f377aDa82Bc7z0jpU/33sjuRMk49YQgy/c4xTitHPt0ia+CT2PeR7enQi
	Auqb7j6uZ0igHr47E6NA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZbiV-0000uq-GW; Fri, 15 May 2020 14:53:39 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZbiA-0000rv-Gw
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 14:53:19 +0000
Received: by mail-wr1-x436.google.com with SMTP id h17so3867461wrc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 May 2020 07:53:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SX5Bvwgq1NCpycdgBCR9PBZe8tNMYarBnn+Wo58F7TE=;
 b=ZSpUts1p2V+jm65xGyFdEfdNEm3vqUIjDn0QO3tjKgS7pVp1tsIS5TQWMV2YUO4qyf
 S/N/ColVzKXLowSbNJ/8sAGDDKC8qLcMYbZKCjBucHgC225cPawt/3dNSiqeRPZvK2Oh
 NBL8CcaQWULu7hcL/wjBTeIEpZBvG3njqPMICgvChW+4ZuQD/HfxnzshLyMFHY9G/1m9
 q/qPzwhNruQw3dx3awwob4WAt6648UxmdwLLl4FRyK4V6tRB42c1kCfsMDXBuYgzG6Aw
 STLV5cz1kxuOMU9TBR/nlC88uNYv67ua/ufOIF2g9TvGu4qhSlPKe2R2LS9hb0yKM3Mg
 OVig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SX5Bvwgq1NCpycdgBCR9PBZe8tNMYarBnn+Wo58F7TE=;
 b=HpBQVUBd2LTicBWoJnp39+J6+sdpwAm+KDgXjNtgXPXZuLj7OhpZytb3GUsV+lJlNX
 UoP0EGTbv5DJWdniCOMhQXA0RVQjEkimB3vE4nZYwd/+jGArJ5CHT3mJRPjwcIM1R4mo
 Ll0ChJ0Hv2cuuehR9qYqJAqd7R+x8YDdN92xwSmuVocpqKRCsDvaho9KP0QRxYH2fqGh
 ViCVEPqkBa3R88ysODdUuR8Wdaw2ojUnXo7Nc9+XG7oHjKkQBOZEVEBVs2T6vfu1hloi
 oTUDzYpff9eHASDgoKdFdSMVEqfB0RYtIF9Zzwi0616hC0+riG+Yk70B4U0Xqj+WEFzM
 INnA==
X-Gm-Message-State: AOAM5317IU0t8i3OZeMVmxKGPh+tRnq9Ys1DDmNgivSB5XDpTYhdug5X
 cKwvVEYmUzPX3rMkiC+XKyMMziqN
X-Google-Smtp-Source: ABdhPJzgQb+q8i0SHtbCmU9o/4qBh9GOqYxAltQtOQU4/+xzTU8ZChsTImA8UBelmztau/r7CJmOiA==
X-Received: by 2002:adf:9d91:: with SMTP id p17mr4519295wre.119.1589554396003; 
 Fri, 15 May 2020 07:53:16 -0700 (PDT)
Received: from localhost (pD9E51079.dip0.t-ipconnect.de. [217.229.16.121])
 by smtp.gmail.com with ESMTPSA id l1sm4182436wrc.24.2020.05.15.07.53.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 May 2020 07:53:14 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: arm@kernel.org,
	soc@kernel.org
Subject: [GIT PULL 00/11] tegra: Changes for v5.8-rc1
Date: Fri, 15 May 2020 16:53:00 +0200
Message-Id: <20200515145311.1580134-1-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_075318_571936_CC40C5B6 
X-CRM114-Status: UNSURE (   7.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:436 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-tegra@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi ARM SoC maintainers,

This set of pull requests contains a couple more driver changes than
usual, which is primarily because of some build-time and runtime
dependencies.

The biggest driver here is probably the VI/CSI driver for Tegra210
which has been extensively been reviewed on the mailing list and was
acked by two of the subsystem maintainers.

Other than that there's CPU frequency scaling work and CPU idle support
for older chips, both of which have also been acked by the corresponding
maintainers. There are also three patches to core OF support which Rob
also acked and which are a build-time dependency for the Tegra210 EMC
frequency scaling patches.

The rest is pretty standard stuff.

For last cycle you had asked subarch maintainers to help with fleshing
out pull request details. Is this something that you wanted to pursue
for this cycle as well?

Thierry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
