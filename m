Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 876236E2D8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 10:49:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gLpfQLn6TBNJhrFFpYmM5JERhgUb51qtvEjJwq/jKik=; b=u3F9bpYVpOAStw
	YN1BpGxFjOev8BDOyS45co2M++0q9wLz+f/bBJkmIA9LTTOQT3YuomeTcBHTKCHXD2b5oR0GLxvnB
	fSLpBTRWcf9qz0VrteFy3Lc/erq12tOJx7B07qFIgQ1fKR9o2wQQ1yFpU6lfNYwLwtImq876Pxywh
	z6OcA+vSGw/HfP1ww+3GUxzdrFYPNywm9Lo2jyvJVYanY1qBka6hufCdaa7bgG9UFF+zU/GbgTZXq
	u8fOJrMBAwOqSPghW5k5ROMHv+JBb3Xt8ZTJQwdvrVxkGoHfSycpMSMFENoxjq492j1BNI0oYTvcy
	piByIayRjEWLvPacKrJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoOZR-0000Vk-Qx; Fri, 19 Jul 2019 08:48:53 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoOYn-0000Fd-OM
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jul 2019 08:48:15 +0000
Received: by mail-lf1-x142.google.com with SMTP id z15so16905518lfh.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jul 2019 01:48:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=oto3ZKEBO7uNTBw2hLUMtLU481PxrOmlSNWwS+t8hHw=;
 b=FmH8Mu9Y5vAHC3tsnVF2eOeEHybGQzFPYjcdPIEwX32vOGyLA4nJ4UTonXdC6YMts9
 aLkHWeXi30ImsHqJPxS1sPaoXe1Jfmuybs3PqFDCMT/vMoa3Y7h7PK5sHzzRj8xaXPJe
 hq95sK1wKAP1eZ5/t0aczLDoFL5nYFJpc9Y9FfYDDTxzNxH3wkxW5clm3dz0UA68GuAv
 +9YkI922HYuDhl5QVeAqzsvjiJT6jdboYER6KVagiQ5S0FSAN9xD6boVzOziEZzhTpWi
 Px/F4AHH8/OPfUuXDseFbFhcCFig3TVDEvbOtqCUZc5q2WWtPg6nyBIocxfthhq7xOND
 44/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=oto3ZKEBO7uNTBw2hLUMtLU481PxrOmlSNWwS+t8hHw=;
 b=lhH6lbWqv8FvEIvaTeSoXLqKB4+PAkAqf61IYKvDCcjcqldXmoDxKV2DL2xykAC+nc
 Ue2xHujBuK0SaEM5wny++qnQ4ZZDljVHYqZJK+a9aKJkTEEkI+DpmOvmT/WTg+3Te857
 PNNVfJKBQSahFyvVx3Cm9ODzsGyhU+KLrJpSC+Y30AL/70Bkd/gPlDBXHhUOkM96k3+n
 W/100BGYPuv1zhxhnxwc5zu0kZWsz8agITf+m+mbnGQEbusxOdGfb6DaSHyBKcb0VYcl
 kp4/AXuOr61T+fLS5t6pQgN/BTZVIYuQ8/w1kALNqgEPoFtFaqgexFsJFqZClDxMjpVx
 mvVg==
X-Gm-Message-State: APjAAAU0XF+j6wSSUjp2macvEAltHGku81pVhIXU3AWpLo5XmcjlrIGu
 LaIm17zaVN07UIGCicixW6w=
X-Google-Smtp-Source: APXvYqyP+aKWOpZc9wPTPESqYu90m/fOpcXXAVg3c5T/FoSA0Uyt5SPFiSS93ZR71XVNjYJjv8CFjg==
X-Received: by 2002:ac2:465e:: with SMTP id s30mr9546033lfo.19.1563526091674; 
 Fri, 19 Jul 2019 01:48:11 -0700 (PDT)
Received: from osv.localdomain ([89.175.180.246])
 by smtp.gmail.com with ESMTPSA id s21sm5588742ljm.28.2019.07.19.01.48.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 19 Jul 2019 01:48:11 -0700 (PDT)
From: Sergey Organov <sorganov@gmail.com>
To: linux-serial@vger.kernel.org
Subject: [PATCH v4 0/3] serial: imx: fix RTS and RTS/CTS handling
Date: Fri, 19 Jul 2019 11:47:51 +0300
Message-Id: <1563526074-20399-1-git-send-email-sorganov@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <20190614072801.3187-1-s.hauer@pengutronix.de>
References: <20190614072801.3187-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_014813_821767_B3C325AB 
X-CRM114-Status: GOOD (  10.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sorganov[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Sergey Organov <sorganov@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyBpcyByZWJhc2Ugb2YgdjMgb24gdG9wIG9mICd0dHktbmV4dCcsIHRvIGdldCByaWQgb2Yg
Y29tbWl0cyB0aGF0CmFyZSBhbHJlYWR5IGFkb3B0ZWQgdG8gbWFpbmxpbmUuCgpSVFMgc2lnbmFs
IGFuZCBSVFMvQ1RTIGhhbmRzaGFrZSBoYW5kbGluZyBoYWQgYSBmZXcgcHJvYmxlbXMgdGhlc2UK
cGF0Y2hlcyBmaXguCgpJbiBhZGRpdGlvbiwgbWlub3IgY2xlYW51cHMgYXJlIG1hZGUgdG8gdGhl
IGludm9sdmVkIGNvZGUuCgpDaGFuZ2Vsb2c6CgogIHY0OgoKICAgICAgKiByZWJhc2VkIG9uIHRv
cCBvZiAndHR5LW5leHQnLCB0byBnZXQgcmlkIG9mIGNvbW1pdHMgdGhhdAogICAgICAgIGFyZSBh
bHJlYWR5IGFkb3B0ZWQgdG8gbWFpbmxpbmUuCgogIHYzOgoKICAgICAgKiBJbXByb3ZlZCBjb21t
ZW50cyBpbiAic2VyaWFsOiBpbXg6IHNldF9tY3RybCgpOiBjb3JyZWN0bHkKICAgICAgICByZXN0
b3JlIGF1dG9SVFMgc3RhdGUiLCBhcyBzdWdnZXN0ZWQgYnkgVXdlIEtsZWluZS1Lw7ZuaWcKICAg
ICAgICA8dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPgoKICB2MjoKCiAgICAgICogQXBw
ZW5kZWQ6ICJSZXZpZXdlZC1ieToiIGFuZCAiVGVzdGVkLWJ5OiIKICAgICAgICBTYXNjaGEgSGF1
ZXIgPHMuaGF1ZXJAcGVuZ3V0cm9uaXguZGU+CgogICAgICAqIFJlbW92ZWQgIlJGQyIgZnJvbSBo
ZWFkZXIKCiAgdjE6CgogICAgICAqIEZpeGVkIGluICJzZXJpYWw6IGlteDogc2V0X3Rlcm1pb3Mo
KTogcHJlc2VydmUgUlRTIHN0YXRlIgoKLSsJdWNyMiA9IFVDUjJfU1JTVCB8IFVDUjJfSVJUUzsK
KysJdWNyMiB8PSBVQ1IyX1NSU1QgfCBVQ1IyX0lSVFM7CgogICAgICAgIGFzIG5vdGljZWQgYnkg
TG90aGFyIFdhw59tYW5uIDxMV0BLQVJPLWVsZWN0cm9uaWNzLmRlPgoKICAgICAgKiBGaXhlZCBp
biAic2VyaWFsOiBpbXg6IHNldF90ZXJtaW9zKCk6IHByZXNlcnZlIFJUUyBzdGF0ZSIKCi0rCXVj
cjIgPSBvbGRfdWNyMiAmIChVQ1IyX1RYRU4gfCBVQ1IyX1JYRU4gfCBVQ1IyX0FURU4gfCBVQ1Iy
X0NUU0MpOworKwl1Y3IyID0gb2xkX3VjcjIgJiAoVUNSMl9UWEVOIHwgVUNSMl9SWEVOIHwgVUNS
Ml9BVEVOIHwgVUNSMl9DVFMpOwoKICAgICAgICBhcyB0aGUgZml4IGZvciB0aGUgcHJvYmxlbSBm
b3VuZCBieSBTYXNjaGEgSGF1ZXIKICAgICAgICA8cy5oYXVlckBwZW5ndXRyb25peC5kZT4KCiAg
ICAgICogUmVvcmRlcmVkOgoKICAgICAgICBzZXJpYWw6IGlteDogc2V0X3Rlcm1pb3MoKTogcHJl
c2VydmUgUlRTIHN0YXRlCiAgICAgICAgc2VyaWFsOiBpbXg6IHNldF90ZXJtaW9zKCk6IGRvIG5v
dCBlbmFibGUgYXV0b1JUUyBpZiBSVFMgaXMgdW5zZXQKCiAgICAgICAgYXMgdGhlIGxhdHRlciBt
YWtlcyBzZW5zZSBvbmx5IHByb3ZpZGVkIHRoZSBmb3JtZXIgaXMgYWxyZWFkeQogICAgICAgIGFw
cGxpZWQuCgpTZXJnZXkgT3JnYW5vdiAoMyk6CiAgc2VyaWFsOiBpbXg6IHNldF90ZXJtaW9zKCk6
IGRvIG5vdCBlbmFibGUgYXV0b1JUUyBpZiBSVFMgaXMgdW5zZXQKICBzZXJpYWw6IGlteDogc2V0
X21jdHJsKCk6IGNvcnJlY3RseSByZXN0b3JlIGF1dG9SVFMgc3RhdGUKICBzZXJpYWw6IGlteDog
Z2V0IHJpZCBvZiBpbXhfdWFydF9ydHNfYXV0bygpCgogZHJpdmVycy90dHkvc2VyaWFsL2lteC5j
IHwgMjggKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDE4IGlu
c2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQoKLS0KMi4xMC4wLjEuZzU3YjAxYTMKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
