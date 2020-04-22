Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8620E1B50EE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 01:40:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vVHvyuPBtaGFVLC3ZUCZKpV2xJCQl9SEQAoQ8/yberQ=; b=PY71SPxms0CkFH
	dJj6m00884kdBKqy6mRxRuPNShzbFRb1zCFNO0jZ4vM+yFj/FA1cCLECoQHQ/u9XIQ/cV18hG8LJj
	s9DxOqZgYYexUv2r2jRbOg9eMCuF8wViwRFmywjdlIZ6QYUd/1L7TeQH67pcsqrpgbvGmpPt4z+E1
	vflDJijd80Nrwg9+FzU7ziPU7MrJXccvNLT5Zxh2duX82fklduN3nqepgr5IwgyY2W2M/l+wsIQr0
	6IUiJ3UJiWP1z5OXs7zTAlEyHB+yzpwHlWhn2FcW3EgNXqDaB9pQAxcRbmKXhGd0FPODbStNMgKbQ
	1VlQz+aJ/r/n/um15YWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jROy1-0001Nj-MZ; Wed, 22 Apr 2020 23:39:45 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jROxq-0001LX-Lp; Wed, 22 Apr 2020 23:39:36 +0000
Received: by mail-qt1-x841.google.com with SMTP id i68so3367883qtb.5;
 Wed, 22 Apr 2020 16:39:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=E1PBrkT1LoNCkirZimCNKHoVPu32mXxSCEKcm1zSQdY=;
 b=oDo/4WF/ApXIvPS+YZM/b4AuPq4KMtNUrAx4kPRyrKcfDY/7N/wACbuVSV9Bv/+yzf
 fsnHPe6JvdEzXhWLh9tQ6LLzYjBZVEjddVBn1gtQAALZMkA67fSSmIEs97PND8XNvZYp
 /CLble/z+CslEMET1pTe/sVN52S4rwol8nho+e70U31cQydk8ItNbaD2Aun5iR9YbF6y
 S2gA8LYXgnTxOjCa8ODOggGJVmTiCJMrAfqWMBASVIq+rkmiTUfucLWHgc1v7UxPm/SA
 KXTVxF1f1yGF6eVCicEPf0DvQnww0cq8E9wKeCSoC9OtuV2k7GYnhhDWSC8guN4M4SP1
 qKPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=E1PBrkT1LoNCkirZimCNKHoVPu32mXxSCEKcm1zSQdY=;
 b=iFyIJMxvrhQCB+WdTfLDSBA5dc/nunplx3JhUgwglcJXl8AVKL8yzzapw1WGabhThH
 tr6rjAyMx9PxxcdLhBqdLa6k6FWHLVi+Xg68UdvSZMrz49GB/1hSJCXEmejbY15SvQh7
 MD0HJPUgzPaQo7XlCmj2GZ3q5oYg+tTePt/0/kPfzfiUIjPE2rpjfl3LBsqTa++QFQ0w
 f12WSIciqxaOAk99LFCUgcSSeJVffFqH62J3w0NYbT1KaQ8oWW7C+1wtY5YA06NLsWWs
 07kuNIYR1Nb8wQ9td0VI9RqAfwoMgYgryjdfqr+JFzSDEqHcl1S+NxOyoefogvcgS6rq
 H6GQ==
X-Gm-Message-State: AGi0PuY5ydE+1mQVB6A4hpOytbb+e4kO5+kdO9XgfzojipXhT1E2pUH9
 +EWWgbfuqJTsDo1Vo+WEuXY=
X-Google-Smtp-Source: APiQypIx5CG1YBGE7PM0vaWxnGyfc8b17Jq+bNco8g/8Tp6x3Az3BOQ4nLnVYoI1NU6hWc+y49zG8Q==
X-Received: by 2002:ac8:1090:: with SMTP id a16mr1262025qtj.181.1587598771607; 
 Wed, 22 Apr 2020 16:39:31 -0700 (PDT)
Received: from imac (dhcp-108-168-12-59.cable.user.start.ca. [108.168.12.59])
 by smtp.gmail.com with ESMTPSA id
 i6sm475709qkk.123.2020.04.22.16.39.30
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 22 Apr 2020 16:39:31 -0700 (PDT)
Date: Wed, 22 Apr 2020 19:39:28 -0400
From: Tim Lewis <elatllat@gmail.com>
To: elatllat@gmail.com
Subject: [PATCH v3] arm64: dts: meson: S922X: extend cpu opp-points
Message-ID: <20200422233928.GA2816@imac>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_163934_741743_32D247D1 
X-CRM114-Status: UNSURE (   8.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [elatllat[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, joy.cho@hardkernel.com,
 narmstrong@baylibre.com, khilman@baylibre.com, christianshewitt@gmail.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, tobetter@gmail.com,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

HardKernel supports overclock through the addition to extra opp points
in their official kernel sources for odroid-n2 [1]. Christian tested
on other S922X devices with "no obvious issues". Neil thinks dvfs and
thermal managementis can keep other S922X devices safe.

[1] https://github.com/hardkernel/linux/commit/f86cd9487c7483b2a05f448b9ebacf6bd5a2ad2f
Tested-by: Christian Hewitt <christianshewitt@gmail.com>
Signed-off-by: Tim Lewis <elatllat@gmail.com>

---
 arch/arm64/boot/dts/amlogic/meson-g12b-s922x.dtsi | 15 +++++++++++++++
 1 files changed, 15 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-s922x.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12b-s922x.dtsi
index 046cc332d..1e5d0ee5d 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-s922x.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-s922x.dtsi
@@ -65,6 +65,11 @@
 			opp-hz = /bits/ 64 <1896000000>;
 			opp-microvolt = <981000>;
 		};
+
+		opp-1992000000 {
+			opp-hz = /bits/ 64 <1992000000>;
+			opp-microvolt = <1001000>;
+		};
 	};
 
 	cpub_opp_table_1: opp-table-1 {
@@ -120,5 +125,15 @@
 			opp-hz = /bits/ 64 <1704000000>;
 			opp-microvolt = <891000>;
 		};
+
+		opp-1800000000 {
+			opp-hz = /bits/ 64 <1800000000>;
+			opp-microvolt = <981000>;
+		};
+
+		opp-1908000000 {
+			opp-hz = /bits/ 64 <1908000000>;
+			opp-microvolt = <1022000>;
+		};
 	};
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
