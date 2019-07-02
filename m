Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61F485CCCA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 11:41:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=gIN8vDxLBgwJ5iaTDWemvX8pgehu42M5ia+ihj0C0cY=; b=Ris
	w3kildjuYtcmNDbT5cy6tCQrsi0tMOF+9zNS5e9uct+Z+sOX/JYNL8TG6gx1S/uJRmOSv57h0168e
	hX7w6t4AqowkgDFqI/z63w8LIxrzYdoEYJpB6FxDvkspoOAAqxP2bFZKnHmotEtOB2F08WscBaZLr
	99RgfnDE6M6s+61QsoysrvqJ76nxmliIvEcbJizrMYSl8lQvgQcPArhdmbRkgjAP0CZODym66HlDn
	DbZcoCcKyNFhxlnxzBln1hKNyyVqkNYtuZwqxo/Lr+kmkewANH9QpidQgYiJarVUO5OvtM1dJCuYF
	00HLcaNlaj9Jk5xJxdtTJfK1qZPpb4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiFID-0000Ux-WD; Tue, 02 Jul 2019 09:41:42 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiFHd-00009s-9B; Tue, 02 Jul 2019 09:41:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1562060457;
 bh=xXxtxyTTAn8WYnm5rjgM/bMkAxJpK4CP+ke02d7vvFg=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=UT429osiJWt9Ktapaxnx8fs5B8LcwmS7KgJKihCwBJfXVOcrW4YkDk4ZYpRjphlJv
 8tRm9c8ftFzcVjvsh54fMeK72mB+7tfWiixpeB5Obj4KqO++ik16d+sX0+OOia83aj
 jUA/3FmIOmW/y5zzVb21MVSOKpk/1xe3aZ6lpAhs=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([217.61.147.59]) by mail.gmx.com
 (mrgmx104 [212.227.17.168]) with ESMTPSA (Nemesis) id
 1MbAci-1iFOAj2AQa-00bcOR; Tue, 02 Jul 2019 11:40:57 +0200
From: Frank Wunderlich <frank-w@public-files.de>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 0/3] implement poweroff for mt6323/6397
Date: Tue,  2 Jul 2019 11:40:42 +0200
Message-Id: <20190702094045.3652-1-frank-w@public-files.de>
X-Mailer: git-send-email 2.17.1
X-Provags-ID: V03:K1:vYKfD5Hh1FjG0AmzmJlBnrFiyiLdIG4UpK+hPmNFhBA295L5B2E
 mQ5m4TWy+Z6lodaNgkm5A8VAm0OgBMObKifo2SKYDpIdlWYN3bj8XFS5SrIC7tb6dptTv6U
 CY2W/tOlOq+Gxqa+LZDzXopMLbuCqOOJRWU0Jw8awZXwwa5R+DMZK1RIWFRRhjhBNliuyD0
 5r1JKZbDUTOoleblNtLWw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:c+vdco4YyNU=:rlxBYVMFtWfezfoncYCRpQ
 +CYJbcolYvgXyOHBFqGoz65on402iVLY39B7kjoR6U0tKfphAuatufZMaGJ+tDeloCDLbV237
 rmcXYalB5u8cRsJOfEO7D473L7h8fWSiPJyiV4wskLnuheg6ildREWL+03V/bxUWlQ858hXzt
 Up3UumFj3GihS5/nPvhmGWpt31K4VOgiAq2Q8HeaMQjRjn9IEkpnaURt0m+kr3O7t5RLJTTDH
 dzy0GfqkW5G6eJoSKst9yJtgnqdpD4LuhdZKAGeS55JJoa1DAin5KH7QIbVcsI0RDMPaw3TGC
 cY96oXOdi+BW1GPLOu9TNNfIacK0ovyW0xEt1RQVNdTZtqYIoaSGDXQc01x3QUDAKyj9HjixN
 +k6R6/JyUQVvbUClRCd05i2PdpqkCAW3vUYiveUDwFLToAiSQDtmv/HiZoSWG6ZewoNmIaC3a
 bDGi2BmwUPk8DvHroY3Pu8qLszmYXTA9hDhbW/vvBnLGzq73kzvn9KbTU58fpKgMtJ4fLuBkb
 oDiD2Cqp7KbZMrz4QbPQoSL8GeIXF9YQQSolunrJ30cG9yV0YyGOQ7NwfW230ztZhgHVsvSiC
 fRZzvpvuVOIDngkMfLNxMoUvpZC9lDfv+xk84wRXLBtnzVjgI+7V+OLH8l2BLmH1JJ9xpL6/C
 nnzOge6xhYmvilm7WBsfbjBswT2FagA/z3LirptWEufMsovKO44gxHYKW8NrDVO3CwkQX/K8M
 MvHtD734cBTEme4Ir3YgeT4niXTSW5dLBS9Brf5nycrt+OrGwwEvLV9HdYwRcBE+4bhzvJTX8
 fdr7ARQegsDRMiYupwqOGX34Gh2noiaHA9m9xILeEQ7InxzxZEqswYoWL8Bd7BpdumxIgbNtS
 vFLQ2efcIvCPQUpF/0B2qrZ9yyCahV3eFi+sXNf5TQr2BAd9bOHJ/r6Rthqo4uVPVzkhHm2hY
 oKEgJjcusBCUX8k/NjnAyM8lDsNNTPya/EauTFD/wKc++9M1dYNEnwJ/jrJ6PCtlPy60shKq3
 /z+V8I1KrPkvRhbGIpV1dxEykFzBJe8KCtX9R69RGWcPeRLlwW2oeg1KMVc0tgc4D8o6DmquW
 Mh2LamFUs4osOQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_024105_614299_0250428D 
X-CRM114-Status: UNSURE (   7.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Frank Wunderlich <frank-w@public-files.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

i got this Patchset from josef friedl and want got get it in mainline

tested on bananapi-r2 (mt7623)

with this Patchset real power off (in mailine only "system halted") and
reboot by power-key is working

Josef Friedl (3):
  add doc and MAINTAINERS for poweroff
  add dts for poweroff
  add driver and MAINTAINERS for poweroff

 .../devicetree/bindings/mfd/mt6397.txt        |  10 +-
 .../bindings/power/reset/mt6323-poweroff.txt  |  20 ++++
 .../devicetree/bindings/rtc/rtc-mt6397.txt    |  29 +++++
 MAINTAINERS                                   |   7 ++
 arch/arm/boot/dts/mt6323.dtsi                 |  27 +++++
 drivers/mfd/mt6397-core.c                     |  40 +++++--
 drivers/power/reset/Kconfig                   |  10 ++
 drivers/power/reset/Makefile                  |   1 +
 drivers/power/reset/mt6323-poweroff.c         |  97 +++++++++++++++
 drivers/rtc/rtc-mt6397.c                      | 110 ++++--------------
 include/linux/mfd/mt6397/core.h               |   2 +
 include/linux/mfd/mt6397/rtc.h                |  71 +++++++++++
 12 files changed, 325 insertions(+), 99 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/power/reset/mt6323-poweroff.txt
 create mode 100644 Documentation/devicetree/bindings/rtc/rtc-mt6397.txt
 create mode 100644 drivers/power/reset/mt6323-poweroff.c
 create mode 100644 include/linux/mfd/mt6397/rtc.h

--
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
