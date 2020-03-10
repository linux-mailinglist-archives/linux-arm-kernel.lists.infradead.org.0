Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C78FE1802A4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 17:00:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=48p3oRmuPwuSKwVw86sc/Nv2sbtKdBd+wQOm/fb3TL4=; b=Y1TVg4oGgERNnc
	DpfiMWs6jzLyn76zdODYZ2s/lbuv12gZdlnS0H/Ib8TDiRQAsI5h3FkFkKx/5I7iSP6bN3shrT0qN
	IIqblE0FaJzJ9zQQv5zIscvf+EaYtZ+Ojgd7Gn8+qpAm7QTkcV1lb6AupN6V1FVL6GE8G2YmFv3I9
	EgZqRhuCQWQ7wGRQim68j3E32oKA9CzQnbavqDXWtg74Ol9Znb1cPStsj+VHtF+jjYnRaHDM7b5SB
	6wFVnH8hOSNByLA5OQRu5ppK+cvJ1EPyPSv62G35LzBscMwi8lffbOVBjDJleidtA7RMvmThjZ770
	6D+25ZuiVLbmoe8hI6uQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBhIT-00042w-3V; Tue, 10 Mar 2020 15:59:57 +0000
Received: from poy.remlab.net ([2001:41d0:2:5a1a::]
 helo=ns207790.ip-94-23-215.eu)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBhIJ-00042T-M0
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 15:59:49 +0000
Received: from basile.remlab.net (87-92-31-51.bb.dnainternet.fi [87.92.31.51])
 (Authenticated sender: remi)
 by ns207790.ip-94-23-215.eu (Postfix) with ESMTPSA id F019E5FAAA
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Mar 2020 16:59:41 +0100 (CET)
From: =?ISO-8859-1?Q?R=E9mi?= Denis-Courmont <remi@remlab.net>
To: linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v6 00/18] arm64: return address signing
Date: Tue, 10 Mar 2020 17:59:40 +0200
Message-ID: <26398779.pW9OeS7Wak@basile.remlab.net>
Organization: Remlab
In-Reply-To: <1583476525-13505-1-git-send-email-amit.kachhap@arm.com>
References: <1583476525-13505-1-git-send-email-amit.kachhap@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_085947_860798_76C168E5 
X-CRM114-Status: UNSURE (   5.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CUhlbGxvLAoKTGUgcGVyamFudGFpbmEgNi4gbWFhbGlza3V1dGEgMjAyMCwgOC4zNS4wNyBFRVQg
QW1pdCBEYW5pZWwgS2FjaGhhcCBhIMOpY3JpdCA6Cj4gVGhpcyBzZXJpZXMgaW1wcm92ZXMgZnVu
Y3Rpb24gcmV0dXJuIGFkZHJlc3MgcHJvdGVjdGlvbiBmb3IgdGhlIGFybTY0Cj4ga2VybmVsLCBi
eSBjb21waWxpbmcgdGhlIGtlcm5lbCB3aXRoIEFSTXY4LjMgUG9pbnRlciBBdXRoZW50aWNhdGlv
bgo+IGluc3RydWN0aW9ucyAocmVmZXJyZWQgcHRyYXV0aCBoZXJlYWZ0ZXIpLiBUaGlzIHNob3Vs
ZCBoZWxwIHByb3RlY3QgdGhlCj4ga2VybmVsIGFnYWluc3QgYXR0YWNrcyB1c2luZyByZXR1cm4t
b3JpZW50ZWQgcHJvZ3JhbW1pbmcuCgpJcyB0aGVyZSBhbnkgbm90aW9uIHdoYXQgdGhlIHJ1bnRp
bWUgb3ZlcmhlYWQgd2lsbCBiZT8KCldlIHRyaWVkIHRvIGVzdGltYXRlIFBBdXRoLWJhc2VkIHJl
dHVybiBhZGRyZXNzIHNpZ25pbmcgYW5kIGFuIGF0dGVtcHQgb2Ygb3VycyAKdG8gaW1wcm92ZSBp
dCAoQXJYaXY6MTkxMi4wNDE0NSwgdG8gYmUgcHJlc2VudGVkIGF0IERBQyAyMDIwKSwgYnV0IHdl
IGxhY2tlZCAKcHJvcGVyIGhhcmR3YXJlLgoKLS0gClLDqW1pIERlbmlzLUNvdXJtb250Cmh0dHA6
Ly93d3cucmVtbGFiLm5ldC8KCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
