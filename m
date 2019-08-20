Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF1E49599D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 10:31:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2wbncmPoNPLk8uYSGTkx/AEG4/r0Xz1EtTNlb9pRzPg=; b=R9d8Oa6HlnUT3p
	B/DtqGsghNz4kvrrtOko+rJ5X8W/r2HIOptVlQQhxFVdae16QF0SdQvG3x21gBADacZvsfpRJXBBi
	KdGofB92yLW1d6Atv9k6Oscm2zcAgSYjLRcszCrJqLrnfzKI0g5e9BqZ7MeJ44xZWnXGSr5SBu7s7
	RFZH2ZvnwBxCXjKYd3T9YYyTKNl2AIviK+4XxcF2/jS/AFI6Iyab9xcsiAQKLnllpJdAigoivilDi
	rWPdCInSpcqknYvBUVpIKW3g41Xol7RhTW1gcq6XCQ5jrwJD6XdXEGeMgmBExjVoMp0Iu00syaRuC
	iRJye9L5KQRj57QQf+WQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzzXj-0007nn-7r; Tue, 20 Aug 2019 08:31:03 +0000
Received: from [217.61.57.7] (helo=mail.cardgift.eu)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzzXW-0007nT-CP
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 08:30:52 +0000
Received: by mail.cardgift.eu (Postfix, from userid 1001)
 id C94BD87B87; Tue, 20 Aug 2019 10:30:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=cardgift.eu; s=mail;
 t=1566289836; bh=NvdtL1dBFig1+H0qRt4WCoWu0+iuLnPXzzkVYrHGJ3Y=;
 h=Date:From:To:Subject:From;
 b=SNqtd+uRxV1wZvnLL78CijD0zKWfsEQa5YL77jQxb802lLOGLwQTJ1Cb2K9Fq8wlk
 jJf4kbxbb+sPu/+9vXOM5hVJUUt3R99S32lprl9vvwP833tV24ldyWBspHAfdrpCCt
 r3BLK1vIAEUuf8UuarbRiB1zKUvg7jehpw0w5oW8=
Received: by mail.cardgift.eu.cardgift.eu for
 <linux-arm-kernel@lists.infradead.org>; Tue, 20 Aug 2019 08:30:35 GMT
Message-ID: <20190820084500-0.1.t.1kb2.0.2whql0xj4o@cardgift.eu>
Date: Tue, 20 Aug 2019 08:30:35 GMT
From: =?UTF-8?Q?"Kapolcs_M=C3=A1ty=C3=A1s"?= <kapolcs.matyas@cardgift.eu>
To: <linux-arm-kernel@lists.infradead.org>
Subject: =?UTF-8?Q?Csapat_motiv=C3=A1ci=C3=B3?=
X-Mailer: mail.cardgift.eu
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_013050_788478_8B569358 
X-CRM114-Status: UNSURE (   2.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

w5xkdsO2emzDtm0hIAoKQWhvZ3lhbiBheiDDvHpsZXRpIGd5YWtvcmxhdCBtdXRhdGphLCBhIG5l
bSBhbnlhZ2kganV0dGF0w6Fzb2sgc2Fqbm9zIG5lbSBhIGxlZ2hhdMOpa29ueWFiYiBtw7NkamFp
IGFubmFrLCBob2d5IG7DtnZlbGrDvGsgYXogYWxrYWxtYXpvdHRhayBtb3RpdsOhY2nDs2rDoXQg
dmFneSBhIG11bmthIGlyw6FudGkgZWxrw7Z0ZWxlesWRZMOpc8O8a2V0ISAKCkF6IGFsa2FsbWF6
b3R0YWtrYWwgc3plbWJlbiB0YW7DunPDrXRvdHQgbG9qYWxpdMOhcyBqZWxlbmxlZyBhIGxlZ25h
Z3lvYmIga2low612w6FzIGEgdsOhbGxhbGtvesOhc29rIHN6w6Ftw6FyYSBvcnN6w6FndW5rYmFu
LgoKQXogZm9nbGFsa296dGF0w7NrIHJlbmRlbGtlesOpc3JlIGJvY3PDoWp0YW5haywgdMO2YmJl
ayBrw7Z6w7Z0dCwgw6l0a2V6w6lzaSBqZWd5ZWtldCwgYW1lbHllayBmZWxoYXN6bsOhbGhhdMOz
ayBiw6FybWlseWVuIGplbGxlZ8WxIMOpbGVsbWlzemVyIHbDoXPDoXJsw6FzYSBlc2V0w6luLCB2
YWxhbWludCBheiBpbnRlcm5ldGVzIHbDoXPDoXJsw6Fzb2sgYWxrYWxtw6F2YWwgaXMuCgpFbCB0
dWRqYSDDqXJuaSBuZW0gY3N1cMOhbiBhIGpvYmJhbiBtb3R2acOhbHQgZG9sZ296w7NpIGNzYXBh
dG90LCBkZSB1Z3lhbmFra29yIGFkw7NiZWZpemV0w6lzw6l0IGlzIGNzw7Zra2VudGhldGkhIAoK
U3plcmV0bmUgdMO2YmJldCB0dWRuaSBhIGxlaGV0xZFzw6lncsWRbCBhbWVseSBtZWdvbGTDoXNr
w6ludCBzem9sZ8OhbGhhdCDDlm4gw6lzIGtvbGzDqWfDoWkgc3rDoW3DoXJhPwoKCkthcG9sY3Mg
TcOhdHnDoXMKSHVuZ2FyeSBUZWFtIExlYWRlcgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
