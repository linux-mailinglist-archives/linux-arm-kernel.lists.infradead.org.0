Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2389A1B0A48
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 14:47:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tH7q65JXzxfpDhNDlMGyHE5BPbOEk5/tOffcgceJjWQ=; b=a5UdzaN9XeFqu+
	Byurwz372eim3S1ZueVeh5VsQ1z5n5P+2SYgt+WTJlE0Y8aCroa6EYg6DDqRuu9edAoB+2nLapRuY
	T+xiJ0tmmIrOvQGhxzyGchGKY8T/oyRJKNwGmqw1sRj2quftQiqhJSlBD9P5cHBQUUFJv6kG/GpL7
	6WZuQ+udKNoIA5PM3yDQERtp8aN6XSGimHw6+a9/qXV54P5StJPxk80QjEShfOty4JOyUbhNhTswt
	olNcmie/rbQ4lgWBhHjABSppXL0NFEw6uugj2wW7VGiZtLG8GsAGujQZsUbf9KzNIL5Y4btaxOSRa
	hQyPa0bxj8f0Hagnj04Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQVpU-0006oi-Ij; Mon, 20 Apr 2020 12:47:16 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQVot-0006ek-5E
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 12:46:41 +0000
Received: by mail-wm1-x341.google.com with SMTP id u127so10123429wmg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 05:46:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pu26cOg7Ypo8qZd3E3+gaE3VF/W7RLp9DeHS6yBo9EU=;
 b=oQyaUavqXa3iGQJgooPh2t5s3nVk6PE6gxB0c0GlC/DfZjcLOyvYsSkta5NiIHZ5P8
 UQBbI/p/iyBoLeuXvcqAyjemrxuT4vrJgdEq7daMz3wZjZkIoxO+Xej4LGYiE81mBki2
 0/Nxb3YobRorIJkhJVyZTCYqydI3gZcjPjjzdqda/MLSuv7tgnAinNBTefxzkxu0aHCi
 QhO4jzu6wvo+wedkVMaGfgyiy/TpLoj/iB3P55wOOcYXkrSIvMxlsJDrU+vI48TRxA3k
 sRVv+hBuXVUv+0Kckejr5wuRG34nGnd7ZgFdRL5YQ97cS2DZAIIBdoax8UHBg6Q92ae6
 BkxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pu26cOg7Ypo8qZd3E3+gaE3VF/W7RLp9DeHS6yBo9EU=;
 b=JcGpTy/zsgvK2HxeX0pCgixm82Boj48jTKyPAR21JpT2I8ctgICQ1oQao9jn3sv8Ho
 yN+XOT4R+9GShyRQBw0T14pXZFj8+LggrRYQnV2bko9XbGHWWE3IHGtXKEMyX3LSF6pw
 +7LckLOSA0dp5HwxYZ0cFzV/zkmUIgi79PM4M9FLyK106mTw35SuBPuCclzkOGEfo2cp
 q+qFNjS/UHzeS9mKFQ5Jydp2W1klynJk3itu098VIj2p/SJPyNiuR4c7XMYj/FXnAI//
 PJEYHdRb2qpVAZ+EqIcIFNdnCceJ9DTGiki4DmuRapesLhee1sYCZMRmfsCtLo2XfdR/
 MVLg==
X-Gm-Message-State: AGi0PuYcVnULna6wjr3g6nAbb8/AOnR2R2+bVlQvgMuEWqw0jcInvYmm
 Q5iOpxim07irIL9JFzDDTGkoaqYhE/8=
X-Google-Smtp-Source: APiQypJ9gcFdsuDN76of2BCdFnuseMAVACiI5/xyZaIL2Ek6MR2Fx/Gsh/MUL8sNqS/VvoeZH+slNA==
X-Received: by 2002:a05:600c:244:: with SMTP id 4mr16270764wmj.0.1587386797247; 
 Mon, 20 Apr 2020 05:46:37 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0:4e7:1fdd:b7c2:b3ab])
 by smtp.gmail.com with ESMTPSA id
 h17sm1217802wmm.6.2020.04.20.05.46.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Apr 2020 05:46:36 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v4 0/2] Add support for Allwinner H6 DVFS
Date: Mon, 20 Apr 2020 14:46:32 +0200
Message-Id: <20200420124634.32726-1-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_054639_223851_0D784376 
X-CRM114-Status: GOOD (  10.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peron.clem[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-sunxi <linux-sunxi@googlegroups.com>,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Maxime,

I have sent the v3 serie with the same command as used for the v2.

$> git send-email --to=XXXX HEAD~7

Which is now wrong because I have introduced 2 new commits.

Sorry for that I should have used:

$> git send-email --to=XXXX next/master

Could you apply these patches before the other DVFS patches to keep
a clean order?

Thanks to Ondrej Jirman for the catch,
And sorry for the mistake,
Regards,
Clement

Ondrej Jirman (1):
  arm64: dts: allwinner: h6: Add thermal trip points/cooling map

Yangtao Li (1):
  arm64: dts: allwinner: h6: Add clock to CPU cores

 arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi | 32 ++++++++++++++++++++
 1 file changed, 32 insertions(+)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
