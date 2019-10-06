Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C5C8CD2E3
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 17:31:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=j05kzJR6x27dk0gXh59qnzdYXG0yBJSoZjo1MU3nEOE=; b=piQ7aNXHPfM0F2WU4Vf7pgeAb9
	tXfR2/P1R7H7VXKLbJzJEi23QlOmcjENSZaW9QtEGyvDtFzF7dwWMBW8dfvFcBYzwwWD+skfBbJ2i
	5vC9OEruKMwIc/7I8lIz9HQSXXhnBufsU6xSDv++POOlbtLNpn+TcSGN3TCHfPNwlb/uWMsORMFlB
	Yg2j6N4PmL/fh9QjFASwMPDo2KtxE5SRWVs5vQDvBjwTW4cSQp6y7ESsg6pVbZ1aVS4Zf6nlQyWXn
	5jL9UDnJLdhMCD1mfaSeLAeo4szEzOJORmVsGj1pp6S5r7vhAMALgi/qAfn+ndZPZJoEGn03eYh4u
	NJggCeTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iH8V4-0001yq-Da; Sun, 06 Oct 2019 15:31:10 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iH8T6-0007r7-Pn
 for linux-arm-kernel@lists.infradead.org; Sun, 06 Oct 2019 15:29:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1570375742;
 bh=8nLmfY08cK6Zl55bjH7dTnmxZSguSgPLd5QV3TA7wYk=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=hxvNdN3cgWjB8KXsNL3AJA/h0HrMQsxNVgxkn67YX9P3O85yaK66Xg4GDkyujhquG
 r+Q5rtxnyyE5AzoMXDqR1zuRAp4gTh8HzyZsyPf8wWlnF1IZM9umWu+2phyoyFDGkI
 oScytdho8IAXwbtOZfkH8Yafsu9kQjvKjwJqiM4M=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.116]) by mail.gmx.com
 (mrgmx104 [212.227.17.168]) with ESMTPSA (Nemesis) id
 1MuUjC-1hzCD13IIs-00rV5A; Sun, 06 Oct 2019 17:29:01 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Marcel Holtmann <marcel@holtmann.org>,
 Johan Hedberg <johan.hedberg@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Eric Anholt <eric@anholt.net>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>
Subject: [PATCH V4 10/10] MAINTAINERS: Add BCM2711 to BCM2835 ARCH
Date: Sun,  6 Oct 2019 17:28:28 +0200
Message-Id: <1570375708-26965-11-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1570375708-26965-1-git-send-email-wahrenst@gmx.net>
References: <1570375708-26965-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:ho7aodY28Mw+u3YaTMCbHrrwJViCpFvXzIPn5PuSWIG7Bbv2UTu
 OR1+pZrBOm6bV5ikYjEeedAIsyfTNMfwEoqprQ+l3qbioT6oLRKnF4fEVMGIj9izfLmYXaf
 WX9PqoYLlF4TjOHooNRW1R27Xp1IDE4QoX9UooVWKGccxHn5AjpoSgfOuaALqItuyuNa4zi
 Cb/cOv6M7GGQ3c2ANavew==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:tkgwn1bGI14=:Z/hUYUhFbB+/CWHlJtJhjy
 64j4o8dKT8/CpDRcbmWeUJeSORRlq5SUdvNpgM0XkF9RY2t3m/NyQmoLgKfR3NwSaktxB2yFN
 1+/Kw+S2NFHQU1t6w2VDYeu1HHuREdL8/mLOZgoLaUT/NvAZkKx8+FM0WwtC7mKxN9xUpcAmH
 0tJBUfY/zvyN0j1m1yNY3tqNqSQuNssUtNoTdyeFTI+t2toibKcVToo/xUat8X6J1PAP+MGiv
 ap7mPq987SFy03eVoEY3KRLlkMBn6ybJi7YqEA+JqojUPC5tqbjnlJcA6sX4m3cZsbu1p3Vs3
 Tq/XMkTbMhMRvejd+vmIRH7Am85+zGBQdPSv1Wk6XVPyX6LxnnZdy/tz53CHfbdYxB3qtGJyB
 ZstGSRKXh5rlNC3t0A38SYDaxLD00Eu16VahKZYncxeO8JzTD8Cnqp5KJsGYzh1cJAxjshB0P
 0/UtDt2Tz7zenal/IZFCbLLKCJwpE3u3w//rh6eCliMH9EhcqZwvqVTGMP1Azx1zJSy+9Lmys
 hho/syv7XoGoYzVFFP2lvE1ffF7mbxkFxOWsTJrx3Adjnh0zo6l/Dw9BSBDbYbxNao/8jehZK
 XTD2vxf3f/md7Kb+ZU+kkWM5dXMZZZPC2+OLkPPLDcdfF9OH5NLkwOiseyH4NyOJFID4oTer3
 hl/WF4Dpn63BJrCtwuOI9FF8Wz4UFNXJ18cY9TDAJrW7b21d1qQkRdXtHw5DLjrYTrxKsWM8d
 lx4wS+Uo7ZPSYqpVi60pcIynaGyOJlFmmISd3ggqtv+S/ez/zBQ09QZDgsX11blkFyMTIfM89
 X7ptvFmOYSD/4LsmvLpfGipY/uL5J1FxfkmgRNWTKrbbpqkU2FTvo6pRoSwWt5l167o9sVnAv
 3PVZGUA8pq79Cr+ywDGV9t5n4u2UGXG01+/YXfmrITq166pWaY/CJ+FeUS3USh/FsWfOzpbup
 x//TWUiq44S6qdt1IdnmBp5fHyN930wYa+qwVfzDPqmrG5EsH19qu0PonzgJC8o/w9yZBVJKd
 XoZLfzajSojeDLI5OcSgQuCvggp8Q/TvIQppRi78sLqmFb5iPOr3BrB7i8rH26JKwYqW4vM2w
 oXypXu7CXaJgvW+1773xMm+WaDoQYraMEGKsA+bdwCdW3dSHz/XSo9F63SqPAk56XGC6OVuPu
 OSNp3MycHkjJk+TiypOg/AVuEhj/YzzFmV4uitB9okYN4uasf1i9Mzk+7lDhe9cpyZikSiTF7
 RCVmcqpazxXs1bSyl4xe1Ocot5jmkHwyNUN/oTA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_082909_125735_E436FC2D 
X-CRM114-Status: GOOD (  12.60  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.22 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.22 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 linux-bluetooth@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 Stefan Wahren <wahrenst@gmx.net>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Clarify that BCM2711 belongs to the BCM2835 ARCH.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
Acked-by: Eric Anholt <eric@anholt.net>
---
 MAINTAINERS | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 296de2b..14a939a 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -3187,7 +3187,7 @@ N:	bcm216*
 N:	kona
 F:	arch/arm/mach-bcm/

-BROADCOM BCM2835 ARM ARCHITECTURE
+BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE
 M:	Eric Anholt <eric@anholt.net>
 M:	Stefan Wahren <wahrenst@gmx.net>
 L:	bcm-kernel-feedback-list@broadcom.com
@@ -3195,6 +3195,7 @@ L:	linux-rpi-kernel@lists.infradead.org (moderated for non-subscribers)
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 T:	git git://github.com/anholt/linux
 S:	Maintained
+N:	bcm2711
 N:	bcm2835
 F:	drivers/staging/vc04_services

--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
