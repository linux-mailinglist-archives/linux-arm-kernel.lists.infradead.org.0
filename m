Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D1574CB1A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 11:40:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KGuulXaXqKrh3kkUaEutPracaEaAxyrI5QjoV8Th+/A=; b=GdXL/N0w4U05Ch
	Lie9OXC3W2jo1dN6kiek15LGwyTtY5jQRjo3v/OZnhgGYHVW5/I5MhuY6wRz+VWG8XlJppRStkvhl
	QRBTXpZDqk0l1iTL81epCi5sn4uivWSvRSW5da+aZrItCPivDAbFUSCce9fq6XNBBRlx1sA5JYd9T
	/qy52bNw2vShR7AMQGouRzqBoF8axh0/DK/OfUhddxJzOBKwt0kgS8NcApL5SIgl7ZZUr3dv0k9WL
	+gk4gUa+zfja5hk3XLJEAL4P0ZjuK6EpZh0qBsVtEtCxSazoa1iACPogrfsD2uIbwR2ku4X/TipVS
	3tanrvxEMRD3fpqxzD0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdtYE-0001sH-BD; Thu, 20 Jun 2019 09:40:14 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdtXw-0001s8-Us
 for linux-arm-kernel@bombadil.infradead.org; Thu, 20 Jun 2019 09:39:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oS67h1vE9w/jg2gTOPcbexFuq0tAHNshYqKNMPuIWH4=; b=1plvVZvn99awUbK0WKUcHIQI2F
 j7IPfj36laeX/YAfYEklrDhKPBvCuwZZcw4++euMHX22l7IlU9uPgYiQOr7O9nP1o53Qk4SXAozAe
 vBtY10f39S6EBJDomoOs7GxYVZMjs9ObuRP7TNOjafR4SOETLBqddXUq+njvYbqxrnlkU0Ez+Wmpg
 ndsyGKCz6z22OMLhkit2RKJpouW5c9OnvPs2v1dsC+N8X+ydT2Yf5sHRm239PWSsFEgIlE2JbOfP5
 rEgF9F/yilJJtphP9UWUkTiCHe0y0T+PU2kCE74ohy7iu1Lg+iSIaBHjfUtbL/SEq6GinFNOrZE24
 IBSveJ7w==;
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdtXt-0005Of-PE
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 09:39:55 +0000
Received: from localhost (alyon-656-1-672-152.w92-137.abo.wanadoo.fr
 [92.137.69.152])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id B7EAA200003;
 Thu, 20 Jun 2019 09:39:13 +0000 (UTC)
Date: Thu, 20 Jun 2019 11:39:12 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Philippe Mazenauer <philippe.mazenauer@outlook.de>
Subject: Re: [PATCH] arm: add missing include platform-data/atmel.h
Message-ID: <20190620093912.GX23549@piout.net>
References: <VI1PR07MB443209D29ADFA139B9735D89FD000@VI1PR07MB4432.eurprd07.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <VI1PR07MB443209D29ADFA139B9735D89FD000@VI1PR07MB4432.eurprd07.prod.outlook.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: open list <linux-kernel@vger.kernel.org>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 "moderated list:ARM/Microchip \(AT91\) SoC support"
 <linux-arm-kernel@lists.infradead.org>, Russell King <linux@armlinux.org.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiAyMi8wNS8yMDE5IDA5OjM2OjU3KzAwMDAsIFBoaWxpcHBlIE1hemVuYXVlciB3cm90
ZToKPiBJbmNsdWRlIGNvcnJlc3BvbmRpbmcgaGVhZGVyZmlsZSA8bGludXgvcGxhdGZvcm0tZGF0
YS9hdG1lbC5oPiBmb3IKPiBmdW5jdGlvbiBhdDkxX3N1c3BlbmRfZW50ZXJpbmdfc2xvd19jbG9j
aygpLgo+IAo+IC4uL2FyY2gvYXJtL21hY2gtYXQ5MS9wbS5jOjI3OTo1OiB3YXJuaW5nOiBubyBw
cmV2aW91cyBwcm90b3R5cGUgZm9yIOKAmGF0OTFfc3VzcGVuZF9lbnRlcmluZ19zbG93X2Nsb2Nr
4oCZIFstV21pc3NpbmctcHJvdG90eXBlc10KPiAgaW50IGF0OTFfc3VzcGVuZF9lbnRlcmluZ19z
bG93X2Nsb2NrKHZvaWQpCj4gICAgICBefn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fgo+
IAo+IFNpZ25lZC1vZmYtYnk6IFBoaWxpcHBlIE1hemVuYXVlciA8cGhpbGlwcGUubWF6ZW5hdWVy
QG91dGxvb2suZGU+Cj4gLS0tCj4gIGFyY2gvYXJtL21hY2gtYXQ5MS9wbS5jIHwgMSArCj4gIDEg
ZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQo+IApBcHBsaWVkLCB0aGFua3MuCgotLSAKQWxl
eGFuZHJlIEJlbGxvbmksIEJvb3RsaW4KRW1iZWRkZWQgTGludXggYW5kIEtlcm5lbCBlbmdpbmVl
cmluZwpodHRwczovL2Jvb3RsaW4uY29tCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
