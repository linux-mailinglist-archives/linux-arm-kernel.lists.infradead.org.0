Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3A5978255
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 01:20:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4O5+hVDyhaOdJFDZIV3jV2XYoZfvsHUsQyr+YPjhCEk=; b=MuYSh5I0RhePay
	9HUryZKIxFBIAhomE6Nvefg/ZCTmkd77HrDsB0SioSAXFXfnYsKT3tTy0xwow7M6Q1rQ5bkd9mQtM
	Oc3J/P8UyHj3I0yrkKLGfeQOrvZDOQ0tfKBGhPtsNV+ngFsWbCIM92vq8aX72ppKzC9toICxw9q18
	qCLOpxMcMGaJPvh6c7qZ5cUfMaxZn7tAI93I5RovLtLLeI5jQuQg6zU7xXIgltXD9xvrRoQU3okPq
	pmPdcyj+Adz6WicUnmfZil07mp9nDyEUFsr9StF5UFssK19s5nlKHnOxF6NLAoh5+YXGLAbYV25l6
	dhHAwd4YptuCbtvvc8Dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrsSg-0000AC-U0; Sun, 28 Jul 2019 23:20:19 +0000
Received: from mail-wr1-f66.google.com ([209.85.221.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrsSJ-00009d-Eb
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Jul 2019 23:19:56 +0000
Received: by mail-wr1-f66.google.com with SMTP id z1so59759970wru.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Jul 2019 16:19:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pfnKeVtWMsjeagN3ScOeao7K7unv51Thgt0+ZHQYeeU=;
 b=PkfwrpvG/5nwdTdP3lp5K9YZCknmBNjMaivLgrHZSpP9kVvruv41xT6t7WL8Bt70I9
 Yn09rw5ylRBkceOBmkRfCW0IFEw7EpeoiEFIMPmCRcBNnPXJhCpIlM67wXPChqBrar0N
 TestYHruRzYsAfXkW/ftryoNsYSn+nRzkOfbgW6Fc3IFV6TQtYXol9okl8TYOOMNGHaA
 kKHVRpTCM5Oyj28UiITWu5vJHq0XbtNOAJP8rbgq9GedBOkZ62J+Fbt/nQPwKw1uRlJm
 y/y6I4U6Qub102/yRECq3bBPyi0bknlnvveI7CnCSafdTdSp1WvRJVabwPQaa1X+ZsNl
 QlXA==
X-Gm-Message-State: APjAAAWggPYw5cOM/mmn2yvk70+PvUVm9Vn8g1xdR7fFZSan6cPOkYpw
 ZZd09NRmgGNYO49Cfutso05Dbgvt3bI=
X-Google-Smtp-Source: APXvYqyY2RuYX9/y4QRYH96xA9KFUAgKSfpFPp0MxagW4oTW/Zyz4jiD35a5qHl/cJTk4SYO4cPang==
X-Received: by 2002:a5d:494d:: with SMTP id r13mr41523394wrs.152.1564355993012; 
 Sun, 28 Jul 2019 16:19:53 -0700 (PDT)
Received: from mcroce-redhat.homenet.telecomitalia.it
 (host221-208-dynamic.27-79-r.retail.telecomitalia.it. [79.27.208.221])
 by smtp.gmail.com with ESMTPSA id l17sm41562756wrr.94.2019.07.28.16.19.51
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 28 Jul 2019 16:19:52 -0700 (PDT)
From: Matteo Croce <mcroce@redhat.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] KVM: arm64: mark expected switch fall-through in HYP
Date: Mon, 29 Jul 2019 01:19:49 +0200
Message-Id: <20190728231949.6874-1-mcroce@redhat.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_161955_483984_8A9094C9 
X-CRM114-Status: UNSURE (   7.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.66 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.66 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Marc Zyngier <maz@kernel.org>, Will Deacon <will@kernel.org>,
 linux-kernel@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Mark switch cases where we are expecting to fall through,
fixes a 130+ lines warning.

Signed-off-by: Matteo Croce <mcroce@redhat.com>
---
 arch/arm64/kvm/hyp/debug-sr.c | 30 ++++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/arch/arm64/kvm/hyp/debug-sr.c b/arch/arm64/kvm/hyp/debug-sr.c
index 26781da3ad3e..c648c243f98b 100644
--- a/arch/arm64/kvm/hyp/debug-sr.c
+++ b/arch/arm64/kvm/hyp/debug-sr.c
@@ -18,40 +18,70 @@
 #define save_debug(ptr,reg,nr)						\
 	switch (nr) {							\
 	case 15:	ptr[15] = read_debug(reg, 15);			\
+			/* fallthrough */				\
 	case 14:	ptr[14] = read_debug(reg, 14);			\
+			/* fallthrough */				\
 	case 13:	ptr[13] = read_debug(reg, 13);			\
+			/* fallthrough */				\
 	case 12:	ptr[12] = read_debug(reg, 12);			\
+			/* fallthrough */				\
 	case 11:	ptr[11] = read_debug(reg, 11);			\
+			/* fallthrough */				\
 	case 10:	ptr[10] = read_debug(reg, 10);			\
+			/* fallthrough */				\
 	case 9:		ptr[9] = read_debug(reg, 9);			\
+			/* fallthrough */				\
 	case 8:		ptr[8] = read_debug(reg, 8);			\
+			/* fallthrough */				\
 	case 7:		ptr[7] = read_debug(reg, 7);			\
+			/* fallthrough */				\
 	case 6:		ptr[6] = read_debug(reg, 6);			\
+			/* fallthrough */				\
 	case 5:		ptr[5] = read_debug(reg, 5);			\
+			/* fallthrough */				\
 	case 4:		ptr[4] = read_debug(reg, 4);			\
+			/* fallthrough */				\
 	case 3:		ptr[3] = read_debug(reg, 3);			\
+			/* fallthrough */				\
 	case 2:		ptr[2] = read_debug(reg, 2);			\
+			/* fallthrough */				\
 	case 1:		ptr[1] = read_debug(reg, 1);			\
+			/* fallthrough */				\
 	default:	ptr[0] = read_debug(reg, 0);			\
 	}
 
 #define restore_debug(ptr,reg,nr)					\
 	switch (nr) {							\
 	case 15:	write_debug(ptr[15], reg, 15);			\
+			/* fallthrough */				\
 	case 14:	write_debug(ptr[14], reg, 14);			\
+			/* fallthrough */				\
 	case 13:	write_debug(ptr[13], reg, 13);			\
+			/* fallthrough */				\
 	case 12:	write_debug(ptr[12], reg, 12);			\
+			/* fallthrough */				\
 	case 11:	write_debug(ptr[11], reg, 11);			\
+			/* fallthrough */				\
 	case 10:	write_debug(ptr[10], reg, 10);			\
+			/* fallthrough */				\
 	case 9:		write_debug(ptr[9], reg, 9);			\
+			/* fallthrough */				\
 	case 8:		write_debug(ptr[8], reg, 8);			\
+			/* fallthrough */				\
 	case 7:		write_debug(ptr[7], reg, 7);			\
+			/* fallthrough */				\
 	case 6:		write_debug(ptr[6], reg, 6);			\
+			/* fallthrough */				\
 	case 5:		write_debug(ptr[5], reg, 5);			\
+			/* fallthrough */				\
 	case 4:		write_debug(ptr[4], reg, 4);			\
+			/* fallthrough */				\
 	case 3:		write_debug(ptr[3], reg, 3);			\
+			/* fallthrough */				\
 	case 2:		write_debug(ptr[2], reg, 2);			\
+			/* fallthrough */				\
 	case 1:		write_debug(ptr[1], reg, 1);			\
+			/* fallthrough */				\
 	default:	write_debug(ptr[0], reg, 0);			\
 	}
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
