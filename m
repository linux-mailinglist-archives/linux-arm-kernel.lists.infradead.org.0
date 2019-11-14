Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDD34FC750
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 14:25:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ALC+Z4tHksGD4zk7bXTCyg9u2VrzkUzzu8ffd/vaTCI=; b=V5Q
	XMwpLemXcB/Fe7sQE3bBGeiIwjtlmVcjeuqpzZ/x4L6HgnhvzP/eYPIyjKh2xBveRq7/nm2ydPDyq
	6aXtPzGOc4s4D1LYbkHgvSlv8Irr8H3j5v6gYNcwXTWC6NKk7hc5c8uChT+UfEOEAnM6fGmQ82V0K
	UnMBU666GSkC7BMDuj6gcZ8DsigZaZMbHcpleXVBtnFtmh62M0+qv9BVpvVnwbgsfKvkw3lzXXud8
	OAOZZXNMGQRWZ8QhsuxPIMJ5Soy+rJKmqni5VLiUC37uqpi0ORye+Tl9YV9g7WNwevY3wEMpnpIJ9
	PRXfopE4iCPG2aIPJ5K1SguL2ycMj5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVF7K-0007O6-0z; Thu, 14 Nov 2019 13:24:58 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVF7B-0007Mk-KO; Thu, 14 Nov 2019 13:24:50 +0000
Received: by mail-wm1-x342.google.com with SMTP id l17so5662588wmh.0;
 Thu, 14 Nov 2019 05:24:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=mH8gSNIgKvgPetxbf7rz5MC4m16Vu7th8OeEJ1GZ3WA=;
 b=Bpr0h/OXlj7EmeJlqKo5Wxz48vyUoDHAdh0gSAeyCXdohmi5MPgIVj/TyCBuekAhF3
 gFp1ZwAyxRa3FeV7WaFB4OKxsHBcczf9n3bWeyGQocy/bQpENfSzWnxjFeLPkLUP7jZh
 oXApnfs7K0AeY1U4I6hYhIp5y1GAq+mMdoRjK7tzUcYNP0BghxA71HMGPkO9ouzmzmOk
 UgAOfc4VFrmZUladOiDb+8iL6BPdGlzmcCH2CRPNVHF5OY/2EoZBPhJRAaJWei+bhj1j
 Q25DDOekDlNrc0KXWe7VfOidfEK0JbYFGucPhFe/0fHohJAUZ/Sz5oOEHXwPXmvYmEMc
 +Mrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=mH8gSNIgKvgPetxbf7rz5MC4m16Vu7th8OeEJ1GZ3WA=;
 b=gwiRhVcz1QMOQ20UlG/Xcq8GXmBmcINHxcng3bXS0h1goTDdS/QDAm5M7MLMdVW0nm
 CpvPpbvPqWpZoEMD3T2UhabAXS99jSuL/VUYah6r3CWoZvF+VDxhEeTxoYuRkUP2aTRb
 YjOjrEGPXneeKIa6q2UQV5vr3RiahAZHE5X+5luQ/im/7qNeP25C4EQ63mMuif4qhtm1
 6cYzjcScu2NAtt7CwORpocelNgVU5Tw6HBNEK5Fbm082er6Bh6RseU+AfjRoeSW8XNfg
 /u7CuxjJVK6bNODKpEiLRU38rpzJ5gCctXKisk6rslxhHFX8qwnxFldzPbbTFLScvH2P
 njYQ==
X-Gm-Message-State: APjAAAUGxH+VZi3rOv+f/3NToKtlPmlMTTWIDOnVeYi70cnxsnGXdZEp
 UIM1+2JLxrJxepPGqS6aFVc=
X-Google-Smtp-Source: APXvYqy0OzeEgjEqEz2o9WYlfcRhLzpSJymbbl4yemx7SJZX9xmA8PesRQtNcL6r6/RyfFNg5SDURQ==
X-Received: by 2002:a1c:5fc4:: with SMTP id t187mr8347004wmb.142.1573737887726; 
 Thu, 14 Nov 2019 05:24:47 -0800 (PST)
Received: from localhost.localdomain ([197.254.95.38])
 by smtp.googlemail.com with ESMTPSA id a8sm5838054wme.11.2019.11.14.05.24.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Nov 2019 05:24:46 -0800 (PST)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: maarten.lankhorst@linux.intel.com, mripard@kernel.org, sean@poorly.run,
 airlied@linux.ie, daniel@ffwll.ch, hjc@rock-chips.com
Subject: [PATCH 0/2] add new DRM_DEV_WARN macro
Date: Thu, 14 Nov 2019 16:24:34 +0300
Message-Id: <20191114132436.7232-1-wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_052449_692671_487D9236 
X-CRM114-Status: UNSURE (   7.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wambui.karugax[at]gmail.com)
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
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 heiko@sntech.de, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds a new DRM_DEV_WARN helper macro for warnings log output that include
device pointers. It also includes the use of the DRM_DEV_WARN macro in
drm/rockchip to replace dev_warn.

Wambui Karuga (2):
  drm/print: add DRM_DEV_WARN macro
  drm/rockchip: use DRM_DEV_WARN macro in debug output

 drivers/gpu/drm/rockchip/inno_hdmi.c | 3 ++-
 include/drm/drm_print.h              | 9 +++++++++
 2 files changed, 11 insertions(+), 1 deletion(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
