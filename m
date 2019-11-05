Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FF81EFE14
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 14:15:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fn5gJ6oRyJjiaEMn1P6gJurqtDs71Mg9mwhGmHAuTT4=; b=FFyRc1uai2VpZe
	Kd28y0IcV7cN/7VvN2LvR3J8LoiVZoHUQ15n61GN5CqTzlMwk+vd9YaUokJRpX5ELocxuBRcGRfQJ
	/w9vbOJOe8h4+4N1a+/GlzFXMD/HqdPBjSzMTTemgTuYfccFfqq/W9Zlhz8soey9xYNqqQ5TPj4aI
	ucjyJ0fWq1DcM9t4sVCbq33YsmTNdSXMKuprhTf/BI1tYQDawgFLz46mb00WcywaQDAqzRi5fRWN3
	RcGp9qlfKNtUW0WlEjdR1+aKKkW003rnIkDAf/810AT0Vn0+lf91CfsP6esG+JD2NIf4+njmyHJ4d
	cFkWWuQlR51xrDVZqWoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRyg4-0001dl-Rm; Tue, 05 Nov 2019 13:15:20 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRyfm-0001DG-Mp
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 13:15:04 +0000
Received: by mail-wm1-x344.google.com with SMTP id f3so8968779wmc.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 05:15:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=hB9idhMU92erzOjHPvAXZpJsyvC0oNhoJYwou0xdu0U=;
 b=qp3ErZHJAeyuOjgXLsXiclttDh1bu5NEu4gH06hfC1IiApD6xVTSozILPEpnfN8wl/
 tPL03+8UuumFL0+ztAuQefhcHjbl2w05mugCn88UOR+iv7n2gAWsvIaxnxyNWSB83Wvo
 /q37kvvkPk85TjljzbfqLFrJQkl3+gVbUAgHldjh9mhWKnZN62oWLQ+KhUAR0Rx2FPwJ
 k04cjIAyJBJssoAJsKYuENbrq+/HHC7ssiy+aL1YHwjWlDPReFAUtw22/X0Xu1Fzg1/g
 bQs8hEUavRZ3cUKucaqtFU7Gfr0zWdKm0Ejt7VjDb7EJEzcGc0Tv//kJH277DeCLZ9lR
 HzFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=hB9idhMU92erzOjHPvAXZpJsyvC0oNhoJYwou0xdu0U=;
 b=Uy5pMe09lUM6lG2Fsnq/jiTIFh/3bKD81eTkRMU+hgVpdb9xCmPo48Yqii8xYgKz78
 KTFiW/27D2HSJbXHptqLyhuRuyPflDOOhz6jvXSPTVlaqd1/5KQaE+ua8VqCoOAC9MD7
 Xpod4Eh1pyTeP68mWcLsC0NIYpHW//n7ZX+G8PhbJNBux1bY6dSvz+V2r92t6F7owo1E
 8QndBN8VfkxvkKh8cj1pjajXjSbDL09RFN1BjMqFuq0TeEpxQK0koyD1TT0iElQWjDwF
 OD3Ydqdd+sLmw6FAV9yNPBZioCOou3HYe6tPWyxIR3njK2269MfM4msLBF77Ds2WZLsz
 ETQg==
X-Gm-Message-State: APjAAAX2bxCj0CjwaNQd4TE58V71OQSCIvGGJrm685sK9XHB8zzTfk1X
 DDKdvxVgmoNuDftLE9Rn3Ls=
X-Google-Smtp-Source: APXvYqwhThzYPU8gc+woRw9eFxl7hLqV3HWnaePcB1PbrFUfvPY/cSrHYTH4eVBp5kVN6u0SN9ZXNg==
X-Received: by 2002:a1c:cc16:: with SMTP id h22mr4454762wmb.51.1572959701254; 
 Tue, 05 Nov 2019 05:15:01 -0800 (PST)
Received: from clement-Latitude-7490.outsight.local
 (lputeaux-656-1-11-33.w82-127.abo.wanadoo.fr. [82.127.142.33])
 by smtp.gmail.com with ESMTPSA id a6sm13549920wmj.1.2019.11.05.05.15.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 05:15:00 -0800 (PST)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?=27Uwe=20Kleine-K=C3=B6nig=27?= <u.kleine-koenig@pengutronix.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Philipp Zabel <pza@pengutronix.de>
Subject: [PATCH v3 0/7] Add support for H6 PWM
Date: Tue,  5 Nov 2019 14:14:49 +0100
Message-Id: <20191105131456.32400-1-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_051502_775980_6B9FBA34 
X-CRM114-Status: GOOD (  17.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-pwm@vger.kernel.org,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpUaGlzIGlzIGEgcmV3b3JrIG9mIEplcm5laidzIHByZXZpb3VzIHdvcmtbMV0gdGFraW5n
IGFjY291bnQgYWxsIHRoZQpwcmV2aW91cyByZW1hcmtzLgoKQmluZGluZ3MgaXMgc3RpbGwgc3Ry
aWN0IGJ1dCBwcm9iZSBpbiB0aGUgZHJpdmVyIGFyZSBub3cgb3B0aW9ubmFscy4KCklmIHNvbWVv
bmUgY291bGQgY29uZmlybSB0aGF0IHRoZSBQV00gaXMgbm90IGJyb2tlbiwgYXMgbXkgYm9hcmQK
ZG9lc24ndCBvdXRwdXQgaXQuCgpJIGRpZG4ndCBhZGQgdGhlIGFja2VkLXRhZ3MgYXMgdGhlcmUg
YXJlIGJpZyBjaGFuZ2VzLgoKVGhhbmtzLApDbMOpbWVudAoKSmVybmVqJ3MgY292ZXI6CkFsbHdp
bm5lciBINiBTb0MgaGFzIFBXTSBjb3JlIHdoaWNoIGlzIGJhc2ljYWxseSB0aGUgc2FtZSBhcyB0
aGF0IGZvdW5kCmluIEEyMCwgaXQncyBqdXN0IGRlcGVuZHMgb24gYWRkaXRpb25hbCBidXMgY2xv
Y2sgYW5kIHJlc2V0IGxpbmUuCgpUaGlzIHNlcmllcyBhZGRzIHN1cHBvcnQgZm9yIGl0IGFuZCBl
eHRlbmRzIFBXTSBkcml2ZXIgZnVuY3Rpb25hbGl0eSBpbgphIHdheSB0aGF0IGl0J3Mgbm93IHBv
c3NpYmxlIHRvIGJ5cGFzcyB3aG9sZSBjb3JlIGFuZCBvdXRwdXQgUFdNIHNvdXJjZQpjbG9jayBk
aXJlY3RseSBhcyBhIFBXTSBzaWduYWwuIFRoaXMgZnVuY3Rpb25hbGl0eSBpcyBuZWVkZWQgYnkg
QUMyMDAKY2hpcCwgd2hpY2ggaXMgYnVuZGxlZCBpbiBzYW1lIHBoeXNpY2FsIHBhY2thZ2UgYXMg
SDYgU29DLCB0byBzZXJ2ZSBhcyBhCmNsb2NrIHNvdXJjZSBvZiAyNCBNSHouIEFDMjAwIGNsb2Nr
IGlucHV0IHBpbiBpcyBib25kZWQgaW50ZXJuYWxseSB0bwp0aGUgc2Vjb25kIFBXTSBjaGFubmVs
LgoKSSB3b3VsZCBiZSBncmF0ZWZ1bCBpZiBhbnlvbmUgY2FuIHRlc3QgdGhpcyBwYXRjaCBzZXJp
ZXMgZm9yIGFueSBraW5kIG9mCnJlZ3Jlc3Npb24gb24gb3RoZXIgU29Dcy4KClsxXTogaHR0cHM6
Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9jb3Zlci8xMTA2MTczNy8KCkNoYW5nZXMgaW4gdjM6CiAt
IERvY3VtZW50YXRpb24gdXBkYXRlIHRvIGFsbG93IG9uZSBjbG9jayB3aXRob3V0IG5hbWUKIC0g
Q2hhbmdlIHJlc2V0IG9wdGlvbmFsIHRvIHNoYXJlZAogLSBJZiByZXNldCBwcm9iZSBmYWlsZWQg
cmV0dXJuIGFuIGVycm9yCiAtIFJlbW92ZSBvbGQgY2xvY2sgcHJvYmUKIC0gVXBkYXRlIGJ5cGFz
cyBlbmFibGVkIGZvcm11bGEKCkNoYW5nZXMgaW4gdjI6CiAtIFJlbW92ZSBhbGxPZiBpbiBEb2N1
bWVudGF0aW9uCiAtIEFkZCBINiBleGFtcGxlIGluIERvY3VtZW50YXRpb24KIC0gQ2hhbmdlIGNs
b2NrIG5hbWUgZnJvbSAicHdtIiB0byAibW9kIgogLSBDaGFuZ2UgcmVzZXQgcXVpcmsgdG8gb3B0
aW9uYWwgcHJvYmUKIC0gQ2hhbmdlIGJ1c19jbG9jayBxdWlyayB0byBvcHRpb25hbCBwcm9iZQog
LSBBZGQgbGltaXRhdGlvbiBjb21tZW50IGFib3V0IG1vZF9jbGtfb3V0cHV0CiAtIEFkZCBxdWly
ayBmb3IgbW9kX2Nsa19vdXRwdXQKIC0gQ2hhbmdlIGJ5cGFzcyBmb3JtdWxhCgpDbMOpbWVudCBQ
w6lyb24gKDEpOgogIFtETyBOT1QgTUVSR0VdIGFybTY0OiBhbGx3aW5uZXI6IGg2OiBlbmFibGUg
QmVlbGluayBHUzEgUFdNCgpKZXJuZWogU2tyYWJlYyAoNik6CiAgZHQtYmluZGluZ3M6IHB3bTog
YWxsd2lubmVyOiBBZGQgSDYgUFdNIGRlc2NyaXB0aW9uCiAgcHdtOiBzdW40aTogQWRkIGFuIG9w
dGlvbmFsIHByb2JlIGZvciByZXNldCBsaW5lCiAgcHdtOiBzdW40aTogQWRkIGFuIG9wdGlvbmFs
IHByb2JlIGZvciBidXMgY2xvY2sKICBwd206IHN1bjRpOiBBZGQgc3VwcG9ydCB0byBvdXRwdXQg
c291cmNlIGNsb2NrIGRpcmVjdGx5CiAgcHdtOiBzdW40aTogQWRkIHN1cHBvcnQgZm9yIEg2IFBX
TQogIGFybTY0OiBkdHM6IGFsbHdpbm5lcjogaDY6IEFkZCBQV00gbm9kZQoKIC4uLi9iaW5kaW5n
cy9wd20vYWxsd2lubmVyLHN1bjRpLWExMC1wd20ueWFtbCB8ICA0NyArKysrKysrCiAuLi4vZHRz
L2FsbHdpbm5lci9zdW41MGktaDYtYmVlbGluay1nczEuZHRzICAgfCAgIDQgKwogYXJjaC9hcm02
NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LmR0c2kgIHwgIDEwICsrCiBkcml2ZXJzL3B3
bS9wd20tc3VuNGkuYyAgICAgICAgICAgICAgICAgICAgICAgfCAxMjUgKysrKysrKysrKysrKysr
KystCiA0IGZpbGVzIGNoYW5nZWQsIDE4MSBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQoK
LS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
