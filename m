Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65B171AF534
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 Apr 2020 23:42:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XIfxKmWjIp1bWHy7ehuGtyQ8KDb9osVgnCcw29PWLI8=; b=S/O50E4gTYNhFc
	2/7hnXnpzBhbHe3uj3gVSyc2TKMR8JVXXEpSPvpLoSYPSkl5Fo9/oFongrBBulh7QVIpY8f9961pB
	YoOKPV2HqaRm6C4+1k+5oLBTrgpHm0+g58NDnj8nxFrRglJH1hYQ88iI8YSZgjqtQIyGVcGEeve7u
	945/wv+gq5P5GfMbM5Fs11s5j0GUEu5rmrSh2txbLPgOGKIldagSzZ42hDCMJkYrrVUgoSoKcclZI
	x7uHvUODREXYVHGQ2zUhqBrLgYDGycmwe3jwXIFPYzjQfZTbZd/3Q+cmbdozaoxkyPM3XlfIlWGMo
	tl2JIPSWFp9u72A/DT9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPvEW-0004IE-E5; Sat, 18 Apr 2020 21:42:40 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPvEK-0004H4-78; Sat, 18 Apr 2020 21:42:29 +0000
Received: by mail-qt1-x842.google.com with SMTP id o10so5318632qtr.6;
 Sat, 18 Apr 2020 14:42:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=w/47EmjUE3OUhd2M0nQ4aXQ8hyh3Kb7PGgRqxtZ7DE0=;
 b=ZVUggX0x5rhoXJFUBIldk0DtR/0RR5CPGISHzpnQ+TQnYKrfeMt/KhQQ6q8bIhavOj
 zS5q0fnSx2Qee65hTc8gbTJ22xqcr+E296piNk9oudT07Nb82xX0hBs724JULPmy2x4q
 GJJwWJcNpbmjPbYl1I3v7RhZl331/lkk1TY7969iA0lNpVOYq6SKDsqasccvZ9MjMB4i
 0kUKFWtdXOtUj+1L/TOQnaMqL4x10dyz57zTQnjSaLraneT0/j3K6BnGGG1Pq/Avekeu
 NGM/J24mt5TYyVDDqTHVsWWj/2lHkGdr1t9WzV7e2IJ+pq+90XlqbWTaYHg99pIxSELt
 5wwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=w/47EmjUE3OUhd2M0nQ4aXQ8hyh3Kb7PGgRqxtZ7DE0=;
 b=LzUnFkFEjTC4XOXF1Fvgjsb5sAXHM8DBcbYqPzsF87I6VOykEU60j7JQlUZ93V9WdN
 +9QYt+0mktVzPdI0hGeHfE/Y73JB7+Mb32/fZEgIlN/xJCED4GOlJ+t/141nQqP51nGY
 TcFi3/5tziQlYEv/N7GNpogxoaySd/Qy26c+D/osIiR9h3f5TS0tLQLfI9PU+8B7ctrd
 285omaopFuKWC/AwIMnYpex3q7qdrmR4XjIq6Io7vBX+ya3KWfIhe2JYTHyJ/C/JD39X
 ZS1n11pyEJwbj0KRWgCmMj+h4ZlC6v10E/Ep4MG1yq98wdZOS7idCYOc+/RTqgKkWV3S
 uPhA==
X-Gm-Message-State: AGi0Pua5FO3wC3fob/hFE/9HzbDbEi+umaoXsjPIWpze5I0fDFz+MMK9
 arzf5vV9KdFKXx8s4MT27pg=
X-Google-Smtp-Source: APiQypK/ZNb28CwxyoAZvAhkzL57dtO3+k9ZptxS3i9hczv3oFx6wdSujk2rkeT1CVCQDJTCIa6JzA==
X-Received: by 2002:ac8:1904:: with SMTP id t4mr9678039qtj.367.1587246146742; 
 Sat, 18 Apr 2020 14:42:26 -0700 (PDT)
Received: from imac (dhcp-108-168-12-59.cable.user.start.ca. [108.168.12.59])
 by smtp.gmail.com with ESMTPSA id
 p31sm18381085qtf.11.2020.04.18.14.42.25
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 18 Apr 2020 14:42:26 -0700 (PDT)
Date: Sat, 18 Apr 2020 17:42:23 -0400
From: Tim Lewis <elatllat@gmail.com>
To: elatllat@gmail.com
Subject: [v2] arm64: dts: meson: odroid-n2: extend cpu opp-points
Message-ID: <20200418214223.GA4484@imac>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_144228_286880_02DB0965 
X-CRM114-Status: UNSURE (   7.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [elatllat[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Odroid N2 has a large heatsink and HardKernel supports overclock
through the addition to extra opp points in their official kernel
sources [1]. Add these to the N2 dts only, as other S922X devices
may not have suitable heatsinks.

[1] https://github.com/hardkernel/linux/commit/f86cd9487c7483b2a05f448b9ebacf6bd5a2ad2f
Signed-off-by: Tim Lewis <elatllat@gmail.com>

---
 .../boot/dts/amlogic/meson-g12b-odroid-n2.dts | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
index 42f154057..6f32ac83f 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
@@ -260,6 +260,25 @@
 			};
 		};
 	};
+
+	cpu_opp_table_0: opp-table-0 {
+		opp-1992000000 {
+			opp-hz = /bits/ 64 <1992000000>;
+			opp-microvolt = <1001000>;
+		};
+	};
+
+	cpub_opp_table_1: opp-table-1 {
+		opp-1800000000 {
+			opp-hz = /bits/ 64 <1800000000>;
+			opp-microvolt = <981000>;
+		};
+
+		opp-1908000000 {
+			opp-hz = /bits/ 64 <1908000000>;
+			opp-microvolt = <1022000>;
+		};
+	};
 };
 
 &arb {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
