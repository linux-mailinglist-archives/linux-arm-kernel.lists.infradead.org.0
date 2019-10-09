Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73324D120B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 17:05:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GR0TsMr8vPQHLQSWnTcLKUftaKGtt36jCW8QsIioaww=; b=IzHttkIkJcRZ3t
	wrDaZQtGlHKn8Ria8PjAWmt3lXT7ae/+BDMFKqK23CvrEJwDasxsXwCZhsh8QFLXhYO78dmXsAz43
	Ylnk1Q7wLcX8co2+nLrvPRTrQHZS8E6LB2m/9R9iLuoUkVoqs9ndRzttNBgA0pLylT9K2oy+eQUnJ
	XHb3x9RcPSHSvlwNMEojc0ebYpiPbdm78PGUr3tNM/+U0Uj7/cI9loWm+hgQ4++/j41bCXVRLV+KG
	OmfEjMRQFOTRQ5MuR/WkU4klnQlfwyUEqCapPhMktI7pUB0pEuXDZVOcnJp2TjGkG3GVfAUr3nFcI
	B6oakc1z0xnMoJj+uHDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIDXC-0001EW-2W; Wed, 09 Oct 2019 15:05:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIDX5-0001Dw-Kt
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 15:05:45 +0000
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com
 [66.24.58.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4509920B7C;
 Wed,  9 Oct 2019 15:05:42 +0000 (UTC)
Date: Wed, 9 Oct 2019 11:05:38 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Uwe =?UTF-8?B?S2xlaW5lLUvDtm5pZw==?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH v4 4/8] recordmcount: Rewrite error/success handling
Message-ID: <20191009110538.5909fec6@gandalf.local.home>
In-Reply-To: <20191009104626.f3hy5dcehdfagxto@pengutronix.de>
References: <cover.1564596289.git.mhelsley@vmware.com>
 <8ba8633d4afe444931f363c8d924bf9565b89a86.1564596289.git.mhelsley@vmware.com>
 <20191009104626.f3hy5dcehdfagxto@pengutronix.de>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_080543_699000_8B6BED5E 
X-CRM114-Status: GOOD (  11.24  )
X-Spam-Score: -4.8 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Ingo Molnar <mingo@kernel.org>, linux-arm-kernel@lists.infradead.org,
 LKML <linux-kernel@vger.kernel.org>, kernel@pengutronix.de,
 Matt Helsley <mhelsley@vmware.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCA5IE9jdCAyMDE5IDEyOjQ2OjI2ICswMjAwClV3ZSBLbGVpbmUtS8O2bmlnIDx1Lmts
ZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+IHdyb3RlOgoKCj4gdXdlQHRhdXJ1czp+L2FyaWV0
dGEva2J1aWxkJCAuL3NjcmlwdHMvcmVjb3JkbWNvdW50ICJhcmNoL2FybS9jcnlwdG8vYWVzLWNp
cGhlci1nbHVlLm8iCj4gYXJjaC9hcm0vY3J5cHRvL2Flcy1jaXBoZXItZ2x1ZS5vOiBmYWlsZWQK
ClRoYW5rcyBmb3IgdGhlIHJlcG9ydC4KCj4gCj4gSSBkaWRuJ3QgZGVidWcgdGhpcyBmdXJ0aGVy
LCBpZiB5b3UgaGF2ZSBwcm9ibGVtcyByZXByb2R1Y2luZyBvciBuZWVkIG1vcmUKPiBpbmZvcyB0
ZWxsIG1lLiBUaGUgZGVmY29uZmlnIEknbSB1c2luZyBpcyBhdHRhY2hlZC4KPiAKCkRvZXMgdGhp
cyBmaXggaXQgZm9yIHlvdT8KCi0tIFN0ZXZlCgpkaWZmIC0tZ2l0IGEvc2NyaXB0cy9yZWNvcmRt
Y291bnQuaCBiL3NjcmlwdHMvcmVjb3JkbWNvdW50LmgKaW5kZXggMzc5NmViMzdmYjEyLi42ZGJl
YzQ2Yjc3MDMgMTAwNjQ0Ci0tLSBhL3NjcmlwdHMvcmVjb3JkbWNvdW50LmgKKysrIGIvc2NyaXB0
cy9yZWNvcmRtY291bnQuaApAQCAtMzg5LDExICszODksOCBAQCBzdGF0aWMgaW50IG5vcF9tY291
bnQoRWxmX1NoZHIgY29uc3QgKmNvbnN0IHJlbGhkciwKIAkJCW1jb3VudHN5bSA9IGdldF9tY291
bnRzeW0oc3ltMCwgcmVscCwgc3RyMCk7CiAKIAkJaWYgKG1jb3VudHN5bSA9PSBFbGZfcl9zeW0o
cmVscCkgJiYgIWlzX2Zha2VfbWNvdW50KHJlbHApKSB7Ci0JCQlpZiAobWFrZV9ub3ApIHsKKwkJ
CWlmIChtYWtlX25vcCkKIAkJCQlyZXQgPSBtYWtlX25vcCgodm9pZCAqKWVoZHIsIF93KHNoZHIt
PnNoX29mZnNldCkgKyBfdyhyZWxwLT5yX29mZnNldCkpOwotCQkJCWlmIChyZXQgPCAwKQotCQkJ
CQlyZXR1cm4gLTE7Ci0JCQl9CiAJCQlpZiAod2Fybl9vbl9ub3RyYWNlX3NlY3QgJiYgIW9uY2Up
IHsKIAkJCQlwcmludGYoIlNlY3Rpb24gJXMgaGFzIG1jb3VudCBjYWxsZXJzIGJlaW5nIGlnbm9y
ZWRcbiIsCiAJCQkJICAgICAgIHR4dG5hbWUpOwoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
