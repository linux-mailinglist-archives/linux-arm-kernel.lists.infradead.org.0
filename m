Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C9326A3E8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 10:32:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gtx0HlIhecNApNjYwHTipktEn5vYCiseVzIsQpFln4g=; b=YzARXssQd9ZTKg
	Oloj9ZP65nrPFX5RW8ChH3srYHfKYbtRPxvvbKvTrM9MgrHC9qGfAK3AUtYF6OyQfxEoNrvu28TE3
	jn/pMxtMlsm2oe351JncQfJVvMZDSnOwMmatoPqZYYVTHQpRIWGmX0WG+6BdZCd4+yv/qNFa0RG6Z
	PRmk8Q9oNiyTOdzlqQt8tR3SAzZc6/PQfL1GJH5eeEtWLYyqM7Tr1785N0B7g0mPjo7Rc9aahxRcf
	Jtcyqg8QXcBvM800uEOkyP5TzsQ5f5jBkjVYSLuK60SbtbDZ6QW4B2GJtYZ+YYLsv36moWOoTVayK
	XFKqhCzhFv16LcuZuhew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnIsv-0002aB-TT; Tue, 16 Jul 2019 08:32:30 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnIsW-0002Py-9P
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 08:32:05 +0000
Received: by mail-io1-xd41.google.com with SMTP id h6so38569502iom.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jul 2019 01:32:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=semihalf-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=sKdxU6girRO1TqV8WThQeqzTOlWNp9bBRPW3AAWw3EE=;
 b=0f58P8VQwlkJ/rLmi2ztU74s0mYPu0RPsbPZ83qZuKLqcKxk5YPGbzo3PG9M4E5aym
 sXGG/Yr2A00tpz6yRrNHx96THBD37Mp/sGqFgX6lqyr23gkHOMxm85mizdn5NWpEHpF5
 NuoLsx3x3W6zJB5O12izjCLC7Zg74NSpPZz+RmaftNf36EpTcuvU1ymR6DFM6hh4IoVH
 N7JfpvTzR4AAu7ZDphMIPdrl6WhqP/1TOvslDpSF1NhmV9Vu2OZRs8qCGm3FE4DdQ4bz
 /bbh4RWykT/fFfqdF50k5GcAtXC5fXb1MaaePQX6akllVpM3Y+4LSCAJ1+a2OXRqV9yo
 oQ+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=sKdxU6girRO1TqV8WThQeqzTOlWNp9bBRPW3AAWw3EE=;
 b=Jy/aSAzDYQ/rt2ViEMO1pxPClIgO1jgK9Usg0mJfqx0yyvAIgg1PNvdDHhYIr8fDe5
 /0YisSRQCUJMRVuPq3OgJm+ileD9UL2AkAzFhGqAHY/FVQSTte6Yg+Z75NIeA3jmMOsP
 LhzNzTgHiWC8F4iORtuMzMm3YtBzW/s0Y0HBKwS3tebGCUOxy2RCFGNNSjgFElLZRAhm
 rKnyjp/FUVQOaWPJ0ryy58DMyIHws7wW4Y8ougvPz26D+QWTCNRfqyysibvVJB2d+haP
 I/P2rHbJl7bdMg1R39ZyhR1/5iJzuj0aEsOLNQIhLrmaExDUVd3MhjuTFqT7rTLXcwVO
 LwJw==
X-Gm-Message-State: APjAAAW+8neXUHWt6fMCvZd+fpJ0EYKiCncz+oHdFCjbQcb9A4tVlABm
 y5hNYe88IMb3M/JJLDZ+jZ6KV8mqFfO7Qko73ik=
X-Google-Smtp-Source: APXvYqysvbnNzDFZTOSk9lKhMkpJ49xrRxE2EWpZWMnPCXhWzYs6MW4wC2tnJbZvK6bGRWTX90Jc2AgTPs8k3BJG0IM=
X-Received: by 2002:a5d:860e:: with SMTP id f14mr30170291iol.242.1563265923194; 
 Tue, 16 Jul 2019 01:32:03 -0700 (PDT)
MIME-Version: 1.0
References: <1563200122-8323-1-git-send-email-jaz@semihalf.com>
 <20190715170840.326acd73@windsurf>
In-Reply-To: <20190715170840.326acd73@windsurf>
From: Grzegorz Jaszczyk <jaz@semihalf.com>
Date: Tue, 16 Jul 2019 10:31:52 +0200
Message-ID: <CAH76GKNXnBaR+3N14yMNoTbMtXD2fU17ZvrCA+W19q21jt9Osg@mail.gmail.com>
Subject: Re: [PATCH] PCI: aardvark: fix big endian support
To: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_013204_475524_8833E22A 
X-CRM114-Status: GOOD (  12.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: lorenzo.pieralisi@arm.com, linux-pci@vger.kernel.org,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Bjorn Helgaas <bhelgaas@google.com>, Marcin Wojtas <mw@semihalf.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgVGhvbWFzLAoKcG9uLiwgMTUgbGlwIDIwMTkgbyAxNzowOCBUaG9tYXMgUGV0YXp6b25pCjx0
aG9tYXMucGV0YXp6b25pQGJvb3RsaW4uY29tPiBuYXBpc2HFgihhKToKPgo+Cj4gPiAtICAgICBi
cmlkZ2UtPmNvbmYudmVuZG9yID0gYWR2a19yZWFkbChwY2llLCBQQ0lFX0NPUkVfREVWX0lEX1JF
RykgJiAweGZmZmY7Cj4gPiAtICAgICBicmlkZ2UtPmNvbmYuZGV2aWNlID0gYWR2a19yZWFkbChw
Y2llLCBQQ0lFX0NPUkVfREVWX0lEX1JFRykgPj4gMTY7Cj4gPiArICAgICBicmlkZ2UtPmNvbmYu
dmVuZG9yID0KPiA+ICsgICAgICAgICAgICAgY3B1X3RvX2xlMTYoYWR2a19yZWFkbChwY2llLCBQ
Q0lFX0NPUkVfREVWX0lEX1JFRykgJiAweGZmZmYpOwo+ID4gKyAgICAgYnJpZGdlLT5jb25mLmRl
dmljZSA9Cj4gPiArICAgICAgICAgICAgIGNwdV90b19sZTE2KGFkdmtfcmVhZGwocGNpZSwgUENJ
RV9DT1JFX0RFVl9JRF9SRUcpID4+IDE2KTsKPiA+ICAgICAgIGJyaWRnZS0+Y29uZi5jbGFzc19y
ZXZpc2lvbiA9Cj4gPiAgICAgICAgICAgICAgIGFkdmtfcmVhZGwocGNpZSwgUENJRV9DT1JFX0RF
Vl9SRVZfUkVHKSAmIDB4ZmY7Cj4KPiBTbyBjb25mLnZlbmRvciBhbmQgY29uZi5kZXZpY2UgYW5k
IHN0b3JlZCBhcyBsaXR0bGUtZW5kaWFuIGluIHRoZQo+IGVtdWxhdGVkIGNvbmZpZyBhZGRyZXNz
IHNwYWNlLCBidXQgY29uZi5jbGFzc19yZXZpc2lvbiBpcyBzdG9yZWQgaW4gdGhlCj4gQ1BVIGVu
ZGlhbm5lc3MgPwoKVGhhbmsgeW91IGl0IHNlZW1zIGl0IHNsaXAgb3ZlciAtIGFmdGVyIG15IGNo
YW5nZSBJIGR1bXAgd2hvbGUgY29uZmlnCnNwYWNlIGluIGJpZyBhbmQgbGl0dGxlIGVuZGlhbiBh
bmQgY29tcGVyZSB0byBiZSBzdXJlIHRoYXQgdGhlcmUgYXJlCm5vIG1vcmUgZmllbGRzIHRoYXQg
SWFtIG1pc3NpbmcgYW5kIGV2ZXJ5dGhpbmcgc2VlbWVkIG9rIC0gc28gaXQgaXMKcHJvYmFibHkg
JzAnIHRoZXJlZm9yZSB0aGUgYnVnIHdhc24ndCBjYXVnaHQuCkluIGJyaWRnZSBlbXVsYXRpb24g
dGhlIGNvbnZlcnNpb24gaXMgZG9uZSBjb3JyZWN0bHk6CmJyaWRnZS0+Y29uZi5jbGFzc19yZXZp
c2lvbiB8PSBjcHVfdG9fbGUzMihQQ0lfQ0xBU1NfQlJJREdFX1BDSSA8PCAxNik7Cgo+Cj4gPgo+
ID4gQEAgLTQ4OSw4ICs0OTEsOCBAQCBzdGF0aWMgdm9pZCBhZHZrX3N3X3BjaV9icmlkZ2VfaW5p
dChzdHJ1Y3QgYWR2a19wY2llICpwY2llKQo+ID4gICAgICAgYnJpZGdlLT5jb25mLmlvbGltaXQg
PSBQQ0lfSU9fUkFOR0VfVFlQRV8zMjsKPgo+ID4KPiA+ICAgICAgIC8qIFN1cHBvcnQgNjQgYml0
cyBtZW1vcnkgcHJlZiAqLwo+ID4gLSAgICAgYnJpZGdlLT5jb25mLnByZWZfbWVtX2Jhc2UgPSBQ
Q0lfUFJFRl9SQU5HRV9UWVBFXzY0Owo+ID4gLSAgICAgYnJpZGdlLT5jb25mLnByZWZfbWVtX2xp
bWl0ID0gUENJX1BSRUZfUkFOR0VfVFlQRV82NDsKPiA+ICsgICAgIGJyaWRnZS0+Y29uZi5wcmVm
X21lbV9iYXNlID0gY3B1X3RvX2xlMTYoUENJX1BSRUZfUkFOR0VfVFlQRV82NCk7Cj4gPiArICAg
ICBicmlkZ2UtPmNvbmYucHJlZl9tZW1fbGltaXQgPSBjcHVfdG9fbGUxNihQQ0lfUFJFRl9SQU5H
RV9UWVBFXzY0KTsKPgo+IFNhbWUgaGVyZTogd2h5IGFyZSBjb25mLnByZWZfbWVtX3tiYXNlLGxp
bWl0fSBjb252ZXJ0ZWQgdG8gTEUsIGJ1dCBub3QKPiBjb25mLmlvbGltaXQgPwoKSGVyZSB3ZSBh
cmUgb2ssIHNpbmNlIGlvYmFzZSBhbmQgaW9saW1pdCBhcmUgMWJ5dGUgd2lkZS4KCj4KPgo+IEFs
c28sIHRoZSBhZHZrX3BjaV9icmlkZ2VfZW11bF9wY2llX2NvbmZfcmVhZCgpIGFuZAo+IGFkdmtf
cGNpX2JyaWRnZV9lbXVsX3BjaWVfY29uZl93cml0ZSgpIHJldHVybiB2YWx1ZXMgdGhhdCBhcmUg
aW4gdGhlCj4gQ1BVIGVuZGlhbm5lc3MuCj4KPiBBbSBJIG1pc3Npbmcgc29tZXRoaW5nID8KClll
cyBiZWNhdXNlIHdlIGFyZSBtaXhpbmcgdGhlIDRieXRlIGFjY2Vzc2VzIGluCmFkdmtfcGNpX2Jy
aWRnZV9lbXVsX3BjaWVfY29uZl9yZWFkL3dyaXRlIHdpdGggdTE2IGFuZCB1OCBhY2Nlc3Nlcwp3
aGVuIHJlZmVycmluZyB0byBzdHJ1Y3R1cmUgZmllbGRzIGRpcmVjdGx5LgpFLmcuIHBsZWFzZSBz
ZWUgd2hhdCB3aWxsIGhhcHBlbiB3aGVuIGluIEJFIGUuZy4gZGV2aWNlIGlkIGFuZCB2ZW5kb3IK
aWQgYXJlIHNldCB2aWEgY29uZi0+dmVuZG9yIGFuZCBjb25mLT5kZXZpY2UgYW5kIHRoZW4gcmVh
ZCB2aWEKYWR2a19wY2lfYnJpZGdlX2VtdWxfcGNpZV9jb25mX3JlYWQgd2hpY2ggZmlyc3QgcmVh
ZCB3aG9sZSAzMmJpdCB2YWx1ZQphbmQgdGhlbiBzaGlmdCBpdC4gVGhlIHNhbWUgd2l0aCBvdGhl
ciBub3QgdTMyIGZpZWxkcy4KCkJlZm9yZSBteSBjaGFuZ2VzIFBDSWUgZGlkbid0IHdvcmsgaW4g
QkUgbW9kZSBhdCBhbGwgLSBJJ3ZlIHRlc3RlZCBpdApvbiBhMzcwMC4gTmV2ZXJ0aGVsZXNzIFJ1
c3NlbGwgYWR2aWNlIGFib3V0IFNwYXJzZSB2YWxpZGF0aW9uIGlzCnJlYWxseSBnb29kIC0gaXQg
aGVscHMgdG8gZGV0ZWN0IHNvbWUgYnVncyB3aGljaCBzbGlwIG92ZXIgLSBJIHdpbGwKc2VuZCB2
MiBzb29uLgoKQmVzdCByZWdhcmRzLApHcnplZ29yegoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
