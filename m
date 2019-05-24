Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E7182942E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 11:06:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+qxu+G10X9knhwQefImsgox/ECohcCasDKaerlbidE4=; b=p1SI7yTTBfYjaf
	/CdnAAPUm5iWfewqEQiyf9vc3RjARiq7nf8JwnEkzgAccEeKgDz9LLAxJL2T86G1LnDEBWlDX3/OV
	nQPc3lJFxmv7LaBi3EEa4jKA41ERtEBfejUP30Oaz+Mmf0ZKb4jUrDl2rcoCDAkmM+b7IAnmvKShz
	zgCCKWyuWQmx61w28rfn/prn+l1lH7CEiafg8t3NF3lr0pu5IjoazpIW/RPjOu0HCeGJLPrQ1u4Vl
	1imQjlyrDnbi340NuOZ6yyCO4bm1Sz0R6lx+ckPJlF3y1rA9QGP2tH3I8A//MkHAJSZb+T1KfT1Bp
	wOJDFVxLGnoMmOcV9ocA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU69e-0008Cj-AK; Fri, 24 May 2019 09:06:22 +0000
Received: from mail.tastiess.eu ([194.182.86.235])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU69V-0008B2-N0
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 09:06:15 +0000
Received: by mail.tastiess.eu (Postfix, from userid 1001)
 id 0B9AE896AB; Fri, 24 May 2019 11:02:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=tastiess.eu; s=mail;
 t=1558688757; bh=xcvKmEMOXtJGqNZVDfue3bm1wCTxubc0BjM5QX6f570=;
 h=Date:From:To:Subject:From;
 b=MKlP3UHYUTmVy7P+A5TgANunvu9sYfcSriGPtRsmJSx/LZ8rj9hjs+aTACxCDx+3K
 LM9q04Famxmb6PDH2pkU+XSRmmJNjh6lRxi9Ut7RFj68tOY085fnimWU6HJ1JNJiLV
 FmMM/++2Pg82oojK8dr9AXu7lUwdtu4YIOZUmiV0=
Received: by mail.tastiess.eu for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 09:01:56 GMT
Message-ID: <20190524104440-0.1.u.f5k.0.1v46cotl0i@tastiess.eu>
Date: Fri, 24 May 2019 09:01:56 GMT
From: =?UTF-8?Q?"Kapolcs_M=C3=A1ty=C3=A1s"?= <k.matyas@tastiess.eu>
To: <linux-arm-kernel@lists.infradead.org>
Subject: =?UTF-8?Q?Dolgoz=C3=B3i_juttat=C3=A1sok?=
X-Mailer: mail.tastiess.eu
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_020613_918444_8258154F 
X-CRM114-Status: UNSURE (   1.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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

w5xkdsO2emzDtm0hCgrDiXJkZWtlcyBsZWhldCDDlm5uZWsgZWd5IG9seWFuIGp1dHRhdMOhc2kg
Y3NvbWFnLCBhbWVsbHllbCBrw7Z6ZWwgw6l2ZXMgbmV0dMOzIDQ1LjAwMCBGdCBqdXR0YXTDoXNz
YWwgdMOhbW9nYXRoYXRqYSBkb2xnb3rDs2l0LCBtaWvDtnpiZW4gYSBiw6lybsOpbCBrZWR2ZXrF
kWJiLCBlZ3llcyBtZWdoYXTDoXJvem90dCBqdXR0YXTDoXMga8O2enRlcmjDqXQga2VsbCBjc2Fr
IGtpZml6ZXRuaWU/IAoKQSBtYWd5YXIgcGlhY29uIGVneWVkw7xsw6FsbMOzIHRlcm3DqWtrw61u
w6FsYXR1bmtrYWwgZXogbGVoZXRzw6lnZXMhIE1pa8O2emJlbiBheiDDlm4gY8OpZ2Ugc3DDs3Jv
bCwgZG9sZ296w7NpIMOpbHZlemhldGlrIGEgdsOhc8OhcmzDoXMgc3phYmFkc8OhZ8OhdDoganV0
dGF0w6FzaSBrw6FydHnDoWluayDDqXMgdXRhbHbDoW55YWluayByZW5ka8OtdsO8bCBzesOpbGVz
IGvDtnJiZW4gZWxrw7ZsdGhldMWRZWsuIAoKVsOhbGFzem9sam9uIMOpcyBpc21lcmtlZGplbiBt
ZWcgYSByw6lzemxldGVra2VsISAKCgpLYXBvbGNzIE3DoXR5w6FzCkh1bmdhcnkgVGVhbSBMZWFk
ZXIgIAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
