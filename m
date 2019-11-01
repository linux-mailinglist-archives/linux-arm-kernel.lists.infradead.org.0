Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8E84EC8E5
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 20:10:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ST1HVKISEch1EXcx3UIP8d9m8cg6+aOYmy1IH/YQquU=; b=G1s1gTcM6V4oTS
	wCZfBXPz9mOsuP0S1X4vXyf4vAnaKFK5J1hNUHvZy/MLtWXR5wXAWgYu81CjtM13PVvE3pRiG4F4l
	BZgYWAqQWLtG41JN8FQF90j9rpRsnXhTo4OsYKvEeiGqRR6RMrCsS/iNMYaQHabSa9jWTahnlOLOu
	4HoUFnuK4H7bgEjTUfi2R2v0OPn5AWMifJe1MhcngvqU6xUOUsu3D2b6h2mqGBLNv0J/fwoJlHBa9
	dIud8Fc92NtU9L6dqZ3JmSSVWnVVPkpZVcidPg5g4WeeNw2om+szAEQB3Z7a0yvVKZjcWOuNzfw0s
	iHSFzpv3BeokOZD078wA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQcJ6-0001Vk-Lg; Fri, 01 Nov 2019 19:10:00 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQcJ0-0001V9-8g
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 19:09:55 +0000
Received: by mail-wr1-x42a.google.com with SMTP id t1so4666821wrv.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 Nov 2019 12:09:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from; bh=+9KMQ9JUZoVvV3uqSyKcDQlxrV6/n3oHmn8/wY7sWh4=;
 b=MCQNIXd7MplFzP+NUbxzlj9Bs9PgD9vdg64WUjgp5/nkItuIOf7JDcSJu6JstWYqwD
 vEqwjIPQaMQO2Feuw26oMbKpdZPoca2kkAyvY6hK6LNWfBquJugRLzB9+r2aqWv+h9W/
 we6z4Lb2xXg9qO3mCsyJYdLboxCgmc6DJ7M/BXZK74YKQujGOshEmNg86jcynShvKYQ0
 Oeezi3x60UYiDTJsyYYssoDBLmBghtybAxRkEcZxAHByDGxcpBrCSoahuTWB1rN8x5BV
 neDKoQ0Hkv7xBYxgaDGzkdSRtuxjT0IwVZAHSHR0YW9Xqii2FPMdoqhI9MzveEcC2aOf
 e2dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from;
 bh=+9KMQ9JUZoVvV3uqSyKcDQlxrV6/n3oHmn8/wY7sWh4=;
 b=edQhhixDOYj8R7zTqWR5gDTd52CCeTzYzBJ3UPGZgKsGwFJJx0lsUDbN2sBA9np5AU
 EVv2JLfVMBt08X0/KJIFOntXkLCLzNzuiPp+C3xPcpgp6cG72KST7A33TLfoIrFxoMET
 En0Sc776ouc9+8SrBvehAuincqE8D/eAPb7xMaCzalwLW1uCxnMWGmwTW/q3xh9K2CJU
 WRQK76sNvitbeJ5QZpEfV3ytg29Uv//YAea3KZ1Ws9jsUsJjeS/OWqFJydT90k0lOsvd
 TfALJHX6+VDkkdKmb1XyTvcOZA/lvgmoHfL1N+I3Mc0CP3miIgWfRoa126Ailz83k0tx
 nX8A==
X-Gm-Message-State: APjAAAV+MFURxKxe3jnz6bSlGWxkMlGTf9xQzdqh3wlMwjLz+4fPgmSL
 SwyXds3QVJDvIl8qYwRPRZrGgA==
X-Google-Smtp-Source: APXvYqzVwRhL0yEapVcyB9Tb5JzlyAScoX+G0WZjtCs4qBZuXFPehe22kqR5P0OfhrDFmbLGIM0pbA==
X-Received: by 2002:adf:e4c5:: with SMTP id v5mr12377594wrm.106.1572635391254; 
 Fri, 01 Nov 2019 12:09:51 -0700 (PDT)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
 by smtp.gmail.com with ESMTPSA id u21sm6988952wmj.22.2019.11.01.12.09.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Nov 2019 12:09:50 -0700 (PDT)
Message-ID: <5dbc82fe.1c69fb81.429f0.4ef9@mx.google.com>
Date: Fri, 01 Nov 2019 12:09:50 -0700 (PDT)
MIME-Version: 1.0
X-Kernelci-Report-Type: boot
X-Kernelci-Tree: arm64
X-Kernelci-Branch: for-kernelci
X-Kernelci-Kernel: v5.4-rc5-74-g07d0b0abb45b
Subject: arm64/for-kernelci boot: 19 boots: 1 failed,
 18 passed (v5.4-rc5-74-g07d0b0abb45b)
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org, kernel-build-reports@lists.linaro.org
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_120954_332215_34AB0EEB 
X-CRM114-Status: UNSURE (   4.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42a listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

arm64/for-kernelci boot: 19 boots: 1 failed, 18 passed (v5.4-rc5-74-g07d0b0abb45b)

Full Boot Summary: https://kernelci.org/boot/all/job/arm64/branch/for-kernelci/kernel/v5.4-rc5-74-g07d0b0abb45b/
Full Build Summary: https://kernelci.org/build/arm64/branch/for-kernelci/kernel/v5.4-rc5-74-g07d0b0abb45b/

Tree: arm64
Branch: for-kernelci
Git Describe: v5.4-rc5-74-g07d0b0abb45b
Git Commit: 07d0b0abb45b318fd8e8f9a3763d3301c3f67032
Git URL: git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
Tested: 16 unique boards, 7 SoC families, 1 build out of 3

Boot Failure Detected:

arm64:
    defconfig:
        gcc-8:
            meson-g12a-x96-max: 1 failed lab

---
For more info write to <info@kernelci.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
