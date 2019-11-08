Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 931ECF4D31
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 14:31:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gJGvAC3egiNt526uiWQzixqpHuXx+/IfMNdtW4kb9QY=; b=gVR512RWvREIrC
	WmVdmF0cWNf+srYmraBmHg1tf5fK35798WRGE22nujIjSdcqUOB8pjs6c/az5HpF1S9LHdaWwUIgY
	CMxnoA5VhsRKfYQvmyI5iU5SH5RQCdRk82ns3dKgTr5+rMxy2EO+2y7jfM4XgbJaXAGql9t06wAiX
	lwu9TILvSu09QIs/Yn+EQFVdgTCCoDTQozixHF7LyKtpXt/vScxExxJiJfS0cDuXstldgrbH4kNTb
	vjubVIt2w46PIKk2P1J8I4eiMcb7uNRFSnlcZiCHjMVuCN5YC7kmD2F0c4fBZbngbSWFmagRiAOnw
	BTiA7F7+Zs9fd1GZVqEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT4Mj-00022I-VM; Fri, 08 Nov 2019 13:31:53 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT4Mc-00021g-G7
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 13:31:48 +0000
X-Originating-IP: 86.206.246.123
Received: from xps13 (lfbn-tou-1-421-123.w86-206.abo.wanadoo.fr
 [86.206.246.123]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 6C124C000E;
 Fri,  8 Nov 2019 13:31:35 +0000 (UTC)
Date: Fri, 8 Nov 2019 14:31:34 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH 1/7] spi: zynq-qspi: Anything else than CS0 is not
 supported yet
Message-ID: <20191108143134.1490f092@xps13>
In-Reply-To: <20191108120732.GB5532@sirena.co.uk>
References: <20191108105920.19014-1-miquel.raynal@bootlin.com>
 <20191108105920.19014-2-miquel.raynal@bootlin.com>
 <20191108120732.GB5532@sirena.co.uk>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_053146_670345_B6FA82CB 
X-CRM114-Status: UNSURE (   9.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
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
Cc: Naga Sureshkumar Relli <naga.sureshkumar.relli@xilinx.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Michal Simek <michal.simek@xilinx.com>, linux-spi@vger.kernel.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWFyaywKCk1hcmsgQnJvd24gPGJyb29uaWVAa2VybmVsLm9yZz4gd3JvdGUgb24gRnJpLCA4
IE5vdiAyMDE5IDEyOjA3OjMyICswMDAwOgoKPiBPbiBGcmksIE5vdiAwOCwgMjAxOSBhdCAxMTo1
OToxNEFNICswMTAwLCBNaXF1ZWwgUmF5bmFsIHdyb3RlOgo+ID4gVW5saWtlIHdoYXQgdGhlIGRy
aXZlciBpcyBjdXJyZW50bHkgYWR2ZXJ0aXppbmcsIENTMCBvbmx5IGNhbiBiZSB1c2VkLAo+ID4g
Q1MxIGlzIG5vdCBzdXBwb3J0ZWQgYXQgYWxsLiBQcmV2ZW50IHBlb3BsZSB0byB1c2UgQ1MxLiAg
Cj4gCj4gVGhpcyAoYW5kIHRoZSByZXN0IG9mIHRoZSBzZXJpZXMpIGRvZXNuJ3QgYXBwbHkgYWdh
aW5zdCBjdXJyZW50IGNvZGUsCj4gcGxlYXNlIGNoZWNrIGFuZCByZXNlbmQuCgpNeSBiYWQsIEkg
dGhvdWdodCBJIHdhcyB3b3JraW5nIG9uIGEgdjUuMyB3aGlsZSBJIHdhcyBvbiBhIHY1LjEuIExl
dCBtZQpyZWJhc2UgYW5kIHJlc2VuZCB0aGUgd2hvbGUgcGF0Y2hzZXQuIFNvcnJ5IGZvciB0aGUg
bWlzdGFrZS4KClRoYW5rcywKTWlxdcOobAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
