Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 624421C83BE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 09:47:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ZqtlUq/QldAjgbd6c6d2abwvuWfNXRJip0AFC3lP5wY=; b=jZY
	k9zfJ0efbp52lqWdk9Tz13C5K2CAcYIIiQr+XPj5pw2r5hNWzMzdp0qsTQw6+Ya+kLdiYA4ZJuwPL
	1ZifGWaNepHrUFw6pMj2mhWf/dL8Ufcu7fHD3trEUYXm9QHooGesuBPqTQhkmSKpgpuNKS51nko5R
	CSUZP/uSe6vefHoKiOKGEPnNA2/+tuesGUHidlVmBgj3RDCFnRYRsfA5KTIGkU/YgqejtGV6UDFQj
	mljs+VyVaATGOmGeRvRb41tm9uoUkdg5hF+NpFeiIqwU6Fch1Vhy0IryN65aijT6O6FzsSGI+gbGJ
	ebZt4Oc9+KH7AiCgbaPZoec3G+D8djQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWbFH-0003CB-FE; Thu, 07 May 2020 07:47:03 +0000
Received: from mail-pl1-x62c.google.com ([2607:f8b0:4864:20::62c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWbF7-0003BI-5D
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 07:46:54 +0000
Received: by mail-pl1-x62c.google.com with SMTP id z6so1745727plk.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 May 2020 00:46:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=g//hkau5l+bLowjOvo7e0hcIp3RjLdYp2Jyffr/gTyw=;
 b=OEWXKfPeaEZYnERDF88WoSa12XsXSpfjkMHzHwiqtrFuCfl4U71VXHPuzQu4d86KBu
 Tev9ydj1y1n+vZL8NVMuFY8Pv64h6eX7sLVc2YVna2rkvGqO+tHpiyUuhY4tX+Dxb/9m
 tPewUr0l9J95NwnCOl8L/F75XwxR+rN2nlBTskOjDGTRzv41bEw1qC722oLsIj7ffhXI
 WGA6hRYv7zHc/zHo5Gms+EqfFbSZkvumtpv8qgSKaofbtRTDRhHEVexq+jUaeNEhXa+6
 hkcr9dtzgPvUwUQfF2lgrSYdbSvDP8hS6mwaiW548kzi6PsEEFSPlFUxixGhhnU/66MQ
 ib1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=g//hkau5l+bLowjOvo7e0hcIp3RjLdYp2Jyffr/gTyw=;
 b=lMp9/vc4hqEmd47UJnuk0gQuG45mPcqloVpLjkOUmi3F4LmdNHFlIRqhK6/WHPZoeB
 70G1EJ+2GPAxf+tyCeKh1nEAZU0enWZ0tnAwnTM8ciCJ2/ejnR9QUI1w/f6QuikfGG4l
 zFpiMzCX66uLU1NoGlALHAzpa/IKeDuUCf2FfNVHY2g0hri1VWvHa1h1ezswp129kewp
 b86E9HX9ZwcvVfZFYL0tCsFcgSRw8cHb6EipL+B6YONmBNt6TsTjQHmr8zmYSoYgxL+o
 f8nXC44v+DEeph7yt2vHGbWXpHetalIOeFEFiC4SE2ejlcuLiQRm6eOAFKU4aAoZE6xl
 XPOQ==
X-Gm-Message-State: AGi0PuamWimhrQCFOVd1oKpmZA7P7bsbYYHdRPp6gNXtqg6y+8NKJhwU
 cv4Qy1fTLhbKPHvN1w4F4L0=
X-Google-Smtp-Source: APiQypJvEVCt/Jd3X2vWX+7Q6sS368OiB9k8npMHbxsQtpKwLew6tu2l8fY2D9YMeRRXMdz5VolWsA==
X-Received: by 2002:a17:902:c282:: with SMTP id
 i2mr11789866pld.175.1588837611397; 
 Thu, 07 May 2020 00:46:51 -0700 (PDT)
Received: from fmin-OptiPlex-7060.nreal.work ([103.206.190.146])
 by smtp.gmail.com with ESMTPSA id r26sm4127943pfq.75.2020.05.07.00.46.49
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 07 May 2020 00:46:51 -0700 (PDT)
From: dillon.minfei@gmail.com
To: mcoquelin.stm32@gmail.com, alexandre.torgue@st.com,
 philippe.schenker@toradex.com
Subject: 
Date: Thu,  7 May 2020 15:46:42 +0800
Message-Id: <1588837603-14206-1-git-send-email-dillon.minfei@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_004653_224250_593EBE0F 
X-CRM114-Status: UNSURE (   5.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:62c listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dillon.minfei[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


This patchset enable the stmpe811 touch screen on stm32f429-disco
board, tested with ts_print. as sdram memory shortage on this disco
board, so i didn't test ts_calibrate (kernel crashed at mmap in
open framebuffer)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
