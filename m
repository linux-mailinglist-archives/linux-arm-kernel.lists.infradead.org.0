Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A5D91BA3CF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 14:50:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6DxQD0AKRx+P0lkIahknDcTdE74TiQ/Z+aWkaPo2yZU=; b=eTmTPA0RQnHqME
	BX8NIR1f6uJ/K4jMwUtTMgdsHNXZ2z3IBegiNEW2hTgrrrq6HhLT7a12iMfEpLH4MnZ91sZtkHvoE
	wmfT87ZDrWEGa3sQhJfs2tfFHF5h+swMiNbaVadMCOyImzYZge/mb7skv95iztL3tT4kCZiOgV90B
	j6hIQkLXTbXgg/Vjat/L8xts83hs5terwaLZABKWRrIzEU0P8yA1ibftP6gCLzLSGbiKHBtcWRet9
	h50tTQmtPMld8ZCWd5AcC29kISf9VXUv9enfNugmcQXa+JsufOzX3w5GHrc7n7TjTVWtkKKTlNYlF
	a/Huvxb9IoFK+Oipf08A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT3Cl-0008Mx-UN; Mon, 27 Apr 2020 12:49:47 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT3Cb-0008Ko-0e
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 12:49:38 +0000
Received: by mail-wm1-x342.google.com with SMTP id g12so20283164wmh.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 05:49:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=/9BeKGDV5jCVKkpLL/J/G90uyL40eKzSl52eSn32nKI=;
 b=FDCKgM5d+I3LXOYYHNZvJYOFYfaxiQn750YyOS/Mm5OmI+UtgkQVmrJLcJVO0GC0Zt
 ceXiZxzYCxuFo2pj874FSKlgYESw3zCrGcrtWoh67uMbNS/y2EWqn12K4HTEzdQ7L9TV
 8Ydt0EQ9XPan1CP0DnYWP2akHU0EB/DthO3nLMNuV8+uRBcrGkHHzmYx3Sv205fTRm4E
 5b4C0qe5JPTt53JhevF3pCQjMwj3oG45MbshoLTtRCQYpv6qE8JUMZhaJADgkSUMSajp
 0iY14KjeEy4G+bGCIym8GenUWx0dqk816Qz/srCvboPJihp9eY1jWRPhnfObljaFxrcT
 lMgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=/9BeKGDV5jCVKkpLL/J/G90uyL40eKzSl52eSn32nKI=;
 b=rV061iCApdFg+/Zst+W/Mm3Yw2aK9xYm3LIvmVOYXzYoZwTqJuark/UG50AIToIJi3
 T8rA3iZlzbJVnYGZkTRfTdzaXht1oubR8MEMZmpmsRbpF/vXsgXDq6iQZjIdAzNqNoZ7
 2JkQ5EWneUNXqRMeep++8zpXLIzOXmR9EAVnerWOsxggTxFsUsCcPGOiK78W75DXS3Iq
 XSwzJEfPv1Z0qlNbu1lVo9034H2mv5ZP8qLK3S6bts4WnxvDLmd9WU+GfAyKM9Brq1+2
 cYpcRbnkoVDeZ+UP9aK1yGcPS9pINvTINE0x9Uyjp0Mea7whoPBBRiL31GGq/TEZnmJC
 Xy/A==
X-Gm-Message-State: AGi0Pua3MHQxJhTJhkymWsDsLZ+J2zL35ldk8D8WFIqdUP4zu0UmofaB
 cOg7pqt+KwRDLNP80kuhdpg=
X-Google-Smtp-Source: APiQypKNTyVT4ZVU1rmEWgLaRydqb1YmP+qBmZ8pwJNkhtvwPDp9mdOc3aC0FBQ2FtzLzfCwkPZKcA==
X-Received: by 2002:a1c:bd8b:: with SMTP id
 n133mr27648742wmf.175.1587991769172; 
 Mon, 27 Apr 2020 05:49:29 -0700 (PDT)
Received: from localhost (ip1f115f16.dynamic.kabel-deutschland.de.
 [31.17.95.22])
 by smtp.gmail.com with ESMTPSA id x6sm23218969wrg.58.2020.04.27.05.49.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Apr 2020 05:49:28 -0700 (PDT)
Date: Mon, 27 Apr 2020 10:23:48 +0200
From: Oliver Graute <oliver.graute@gmail.com>
To: jason.hui.liu@nxp.com
Subject: arm64: imx8qm: tlb SW workaround for IMX8QM
Message-ID: <20200427082348.GA98329@archlinux.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_054937_064395_ECCF7A0A 
X-CRM114-Status: UNSURE (   5.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 1.1 DATE_IN_PAST_03_06     Date: is 3 to 6 hours before Received: date
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [oliver.graute[at]gmail.com]
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
Cc: aisheng.dong@nxp.com, anson.huang@nxp.com, catalin.marinas@arm.com,
 oliver.graute@kococonnector.com, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

is this nxp software workaround already proposed to linux community? can
someone point me to the discussion if available.

https://source.codeaurora.org/external/imx/linux-imx/commit/?h=3Dimx_5.4.3_=
2.0.0&id=3D593bea4e36d8c8a4fd65ef4f07fb8144dab2de1c

Best Regards,

Oliver

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
