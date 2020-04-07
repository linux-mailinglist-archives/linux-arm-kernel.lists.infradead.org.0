Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE8741A0C09
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 12:37:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=p9BxySvSah/NorWfk7tN1ErK+JiO2YaK9V9cRgzAzrs=; b=rtJYVug12BXFRo
	u4o5DjIVqTdcJwz8kf5fU0CpJHP1R+dQgErFgo9L06BTNzG8uaDhTWEVVjVDZkPpDwZy9sdJhQPVy
	jYJDpIgxF9ygzUlNdR+1feMNp+39eIKhfANV4y5Pzy0D56bvjN9V/UQg+IxfjlwOM6JiP4uzPVMo8
	t7/tA7//njb1qH+Br881EhNp7msZDisqJ95vKgaPQRXz7dsqoi2Im22L56sQq1knbZ+0Efd4DeW/1
	pc4AC+9BheXMyjfV10M2Z7ZMZtgQqcI1GJzKuEN1ztR1v4AQyAeotGb3mY12XKARetzLIOh8XPBL9
	+KbxQifMzNZAX8dbCCyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLlb9-00069p-8x; Tue, 07 Apr 2020 10:36:51 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLlb0-00069U-PT
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 10:36:43 +0000
Received: by mail-wm1-x342.google.com with SMTP id x25so1228450wmc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Apr 2020 03:36:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=q7QGET4RGE/b2notuLD7So4S9wMFDLvNgiDRB/hMgYo=;
 b=i6GRznCp0m+F1v9sZJgiU4a5ku5MFHh4xOrCVR4GY6/4aX8jhDBZpYoy+E0wKfw3KP
 mXqeoWR3jZfePMnr5sgqE10h9MY/GQKkDPvAQir1N4js9OFWBQb0YDENytyHeDnUdfz8
 C6TBQsSSnVBcoBD2xlb1H4mxHxQEu7gg83VTLRjOOFzuq4MpYTDrFiYqt5xGSRnaK2Lh
 gukRJ6D88qHEldWzg7dP2dQj3K3V45l59Q969LyYKktjyiqHTDiPBXJ0W3RIeEiSMrpO
 y6S5cU41+hpyTfB3t/71ZqekGEqC0/60DeyUKH3qIf1K9wEx7p//vVTjEdCKT5oYRs1A
 st5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=q7QGET4RGE/b2notuLD7So4S9wMFDLvNgiDRB/hMgYo=;
 b=Hc7fx/tYZNG69sRqGVKAcBErYYzsbg7WKjT+MIfSs2p3LuaJICN09PIBuxpa8/fpyN
 GFFZAuLiHTKm7K5+dM+Pn9wIEgxNLbN8ehqYVF19eSFfIsAiMxDzvnqQ83fKoWsJuoQ1
 /FD5gWjBKxWpA9WKMz2iAkCJkoSqz2psJmnxxQFU9WE+nHS3ZNdr3Wed1H6ktVnggtfj
 sy5kRyf4RYfZxVliKCOROLyV4Sdf2o0xtud+gi/nG8sb5pHzG46owjFZcppdex2LBnnm
 zfbNkxHbLIArK79Oi4pDqXNL+qWaag7S6rVkads+VCaPyES+bZ9aenZ62g4YAfOtfwsB
 fcng==
X-Gm-Message-State: AGi0PuZcLxc/i0VscB0mdOL0rouLo8z7s33i8PRlvEoajCmhkoaMLs7s
 8cozH4KiVY4kiVQgduIoaPs=
X-Google-Smtp-Source: APiQypJwScHUCMB89rigfHI1XkeApoit4SWFTemp3glBSOOUL3Sp+gKSO3b2Y60Y/3hijRMfGQhylg==
X-Received: by 2002:a05:600c:2245:: with SMTP id
 a5mr1762018wmm.171.1586255801026; 
 Tue, 07 Apr 2020 03:36:41 -0700 (PDT)
Received: from linuxdev2.toradex.int (31-10-206-124.static.upc.ch.
 [31.10.206.124])
 by smtp.gmail.com with ESMTPSA id c17sm25016722wrp.28.2020.04.07.03.36.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Apr 2020 03:36:40 -0700 (PDT)
From: Max Krummenacher <max.oss.09@gmail.com>
X-Google-Original-From: Max Krummenacher <max.krummenacher@toradex.com>
To: Max Krummenacher <max.krummenacher@toradex.com>
Subject: [PATCH 0/4] defconfig: fix changed configs and refresh
Date: Tue,  7 Apr 2020 12:35:33 +0200
Message-Id: <20200407103537.4138-1-max.krummenacher@toradex.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_033642_855185_0122687C 
X-CRM114-Status: UNSURE (   7.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [max.oss.09[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [max.oss.09[at]gmail.com]
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
Cc: Anson Huang <Anson.Huang@nxp.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>, Li Yang <leoyang.li@nxp.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Vidya Sagar <vidyas@nvidia.com>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Olof Johansson <olof@lixom.net>, Shawn Guo <shawnguo@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Will Deacon <will@kernel.org>,
 Valentin Schneider <valentin.schneider@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Three configs have been renamed and/or changed behaviour.
Clean that by using the new config name.
Then refresh the defconfig with make defconfig savedefconfig.

The refreshed defconfig does result in a not changed .config.

Applies on linux-next/master tag: next-20200407



Max Krummenacher (4):
  arm64: defconfig: DRM_DUMB_VGA_DAC: follow changed config symbol name
  arm64: defconfig: PCIE_TEGRA194: follow changed config symbol name
  arm64: defconfig: ARCH_R8A7795: follow changed config symbol name
  arm64: defconfig: refresh

 arch/arm64/configs/defconfig | 22 ++++++++++------------
 1 file changed, 10 insertions(+), 12 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
