Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4A7210FA99
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 10:18:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=g/l++bx2AuA1r1/WXpimtgK9IhhxlN8ytilP90F4JHE=; b=Ws+3eSmklsDOAh
	PwsBUM0wvsCMfRM5j/JJ1ldV8EUyJO70/6RrxeJNYeZycPu/X9mqWMpBiRdha/H3KorEp2L5hht1i
	+Grn12SE7cpCvqjt2jMNf9zPLAY5oOuGnkDxq6dV/l+Nt88X3jsxp77lGbTpxi2B6hSpMWMs8w2Ya
	V81O+/xgpPPTNFhTKqb2lhK3Y/QjupJre354x0WaAjNjkiL9DfE+4sZ29kqZtq+BL5BqU74021OPx
	Nrz4QPnSCF/BMlbd8rlRgeoIkLgmeaj6WFa59hHke7Sef4Yc0qGu9xwZKodY0+4l0JmKukDfMwgBn
	/nQoWkfyaHXlm32IPnjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic4K9-0002s5-9l; Tue, 03 Dec 2019 09:18:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic4Jy-0002qy-Uk
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 09:18:19 +0000
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com
 [209.85.128.53])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E784C206EC
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  3 Dec 2019 09:18:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575364694;
 bh=HbSHcV5BJo+8R8xmjwxSvwHVTJEBb+W1qSt8gJw5qPU=;
 h=From:Date:Subject:To:Cc:From;
 b=dk0Fg08C4EVDTP+pLzY0yrupf1Jjk8XJPuJ4QdmriGV8AiWraQqXsnz8QmNAk877k
 sfqNaM5+kBwZDLbdF6JoHEmuuOESSqedZDdheKHPDzJl9Mks5zXk1x3/xzYCLcxBiD
 OM9hmpxX2wcYoJX9qXZ5Z5ICNtkMcgZJHEFSUrzw=
Received: by mail-wm1-f53.google.com with SMTP id y23so1853190wma.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Dec 2019 01:18:13 -0800 (PST)
X-Gm-Message-State: APjAAAUBM2gv+Es2tVKFFrnh488C5GvQ0s6i3NQ+Y9aG4DS+RsBIVUw4
 CWpX9Sc9fXwC7l8iZsDXa8gnn7pgdFP+xIihD8E=
X-Google-Smtp-Source: APXvYqwi6BrYe0Q9/wGK25IymqSmUDgapH0cTTtuFjVya6iYOXV+W89jAU+pgiBj+LmCicozQ73AlAtJM786Zi3Zw24=
X-Received: by 2002:a7b:c216:: with SMTP id x22mr32913819wmi.51.1575364692336; 
 Tue, 03 Dec 2019 01:18:12 -0800 (PST)
MIME-Version: 1.0
From: Chen-Yu Tsai <wens@kernel.org>
Date: Tue, 3 Dec 2019 17:17:59 +0800
X-Gmail-Original-Message-ID: <CAGb2v66k7+KMgVPYy0i9CF9VyNnNQEMP0y0AyCrrLX7PBKN+Jw@mail.gmail.com>
Message-ID: <CAGb2v66k7+KMgVPYy0i9CF9VyNnNQEMP0y0AyCrrLX7PBKN+Jw@mail.gmail.com>
Subject: Parallel Camera Interface Timings, Signal Definitions and Polarity?
To: Sakari Ailus <sakari.ailus@linux.intel.com>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_011815_034881_90C58F7D 
X-CRM114-Status: GOOD (  12.41  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: =?UTF-8?Q?Ond=C5=99ej_Jirman?= <megous@megous.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgZXZlcnlvbmUsCgpSZWNlbnRseSwgT25kxZllaiBwb3N0ZWQgYSBwYXRjaCBmaXhpbmcgdGhl
IHBvbGFyaXR5IG9mIFZTWU5DL0hTWU5DCnNpZ25hbHMgaW4gdGhlIHN1bjZpLWNzaSBkcml2ZXIg
WzFdLgoKQWxsd2lubmVyIGRvY3VtZW50cyB1c2UgdGhlIHRlcm1zIFZTWU5DIGFuZCBIU1lOQyBp
biB0aGVpciBjYW1lcmEKc2Vuc29yIGludGVyZmFjZSBoYXJkd2FyZSBkZXNjcmlwdGlvbiwgYnV0
IGJhc2VkIG9uIHRoZSB0aW1pbmcgZGlhZ3JhbXMKaW5jbHVkZWQsIHRoZXkgYWN0dWFsbHkgbWVh
biBWUkVGIChvciBpbnZlcnRlZCBWU1lOQykgYW5kIEhSRUYgaW5zdGVhZDoKdGhlIHBvbGFyaXR5
IGlzIHJldmVyc2VkLCBhbmQgSFNZTkMgaXMgYWN0aXZlIG9ubHkgd2hlbiB2YWxpZCBkYXRhIGlz
CmJlaW5nIHNlbnQgb3ZlciB0aGUgcGFyYWxsZWwgYnVzLgoKQmFzZWQgb24gbXkgbGltaXRlZCBl
eHBlcmllbmNlLCBpdCBzZWVtcyBjYW1lcmEgc2Vuc29ycyBtb3N0bHkgdXNlIFZTWU5DCmFuZCBI
UkVGLCB3aGVyZSBWU1lOQyBpcyBkZWZpbmVkIHRvIGJlIGEgcHVsc2UgdGhhdCBpcyBzZW50IGFm
dGVyIGEgZnVsbApmcmFtZSBvciBmaWVsZCBoYXMgYmVlbiB0cmFuc21pdHRlZCwgYW5kIEhSRUYg
aXMgYSBsZXZlbCBzaWduYWwgd2hpY2ggaXMKYWN0aXZlIHdoZW4gdGhlcmUgaXMgdmFsaWQgZGF0
YSBkdXJpbmcgYSBob3Jpem9udGFsIGxpbmUuCgpJJ20gZ3Vlc3Npbmcgd2UgKHN1bnhpIC8gQWxs
d2lubmVyKSBhcmUgbm90IHRoZSBvbmx5IHBsYXRmb3JtIHRvIGdldCBpdAp3cm9uZy4gSXMgdGhl
cmUgYSBjb25jcmV0ZSBkZWZpbml0aW9uIG9mIHdoYXQgVlNZTkMgYW5kIEhTWU5DIG1lYW4sIGFu
ZAp3aGF0IGFjdGl2ZSBoaWdoIHZzIGFjdGl2ZSBsb3cgY29ycmVzcG9uZCB0bz8KCkZvciBTWU5D
IHNpZ25hbHMsIEkgd291bGQgYXNzdW1lIHRoZSBwdWxzZSBwb3J0aW9uIGlzIHRoZSBhY3RpdmUg
cGFydCwKc28gYSBzaWduYWwgc3VjaCBhcyB0aGUgZm9sbG93aW5nIHdvdWxkIGJlIGNvbnNpZGVy
ZWQgYWN0aXZlIGxvdy4KCiAgICBfX19fX19fXyAgICAgIF9fX19fX19fX19fXwogICAgICAgICAg
ICB8ICAgIHwKICAgICAgICAgICAgfCAgICB8CiAgICAgICAgICAgIHxfX19ffCAgPC0gYWN0aXZl
IGxvdyBTWU5DIHB1bHNlCgoKQWxzbywgaWYgSFNZTkMgaXMgdXNlZCBpbnN0ZWFkIG9mIEhSRUYs
IHRoZXJlIGRvZXNuJ3Qgc2VlbSB0byBiZSBhIHdheQp0byBzcGVjaWZ5IGhvdyBsb25nIHRoZSBo
b3Jpem9udGFsIGJhY2sgcG9yY2ggaXMsIGkuZS4gaG93IG1hbnkgY2xvY2sKY3ljbGVzIHNob3Vs
ZCB0aGUgaGFyZHdhcmUgc2tpcCBiZWZvcmUgY2FwdHVyaW5nIGRhdGEuIFNhbWUgZ29lcyBmb3IK
VlNZTkMgaW5zdGVhZCBvZiBWUkVGLgoKRG9lcyB0aGUgaGFyZHdhcmUgd29yayBiZWNhdXNlIHdl
IGdvdCBsdWNreSB0aGF0IHNlbnNvcnMgdXNlIEhSRUYsCndoaWNoIG1lYW5zIG5vIGhvcml6b250
YWwgYmFjayBwb3JjaCB3aGVuIEhSRUYgaXMgY29uc2lkZXJlZCBhbiBpbnZlcnRlZApIU1lOQywg
YW5kIG5vIHZlcnRpY2FsIGJhY2sgcG9yY2ggYmVjYXVzZSBIUkVGIGlzIG9ubHkgYXNzZXJ0ZWQg
c3RhcnRpbmcKd2l0aCB0aGUgZmlyc3QgdmFsaWQgbGluZSwgaW5zdGVhZCBvZiBoYXZpbmcgcHJl
Y2VkaW5nIGJsYW5raW5nIGxpbmVzPwoKVGhlIGRldmljZSB0cmVlIGJpbmRpbmdzIG9ubHkgaGF2
ZSBoc3luYy1hY3RpdmUgYW5kIHZzeW5jLWFjdGl2ZS4gVlJFRgphbmQgSFJFRiBhcmUgb25seSBt
ZW50aW9uZWQgaW4gcGFzc2luZyBpbiB0aGUgaGVhZGVyIGZpbGUgWzJdLCB3aXRob3V0CmRlc2Ny
aWJpbmcgdGhlIGRpZmZlcmVuY2VzIG9yIGhvdyB0byBzcGVjaWZ5IHdoaWNoIHR5cGUgb2Ygc2ln
bmFsIGlzCnVzZWQuIEkgYmVsaWV2ZSB0aGlzIGRlc2VydmVzIHNvbWUgY2xhcmlmaWNhdGlvbiBh
bmQgaW1wcm92ZW1lbnQuIFRoaXMKd291bGQgaGVscCBhdXRob3JzIG9mIG5ldyBoYXJkd2FyZSBk
cml2ZXJzIGltbWVuc2VseS4KCkFueSB0aG91Z2h0cyBvciBjb21tZW50cyBvbiB0aGUgbWF0dGVy
PwoKClJlZ2FyZHMKQ2hlbll1CgpbMV0gaHR0cHM6Ly9sa21sLm9yZy9sa21sLzIwMTkvMTEvMjcv
MTgxNgpbMl0gaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgvbGF0ZXN0L3NvdXJjZS9p
bmNsdWRlL21lZGlhL3Y0bDItbWVkaWFidXMuaCNMMjcKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
