Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 066C14D4A7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 19:14:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7af+o2lg50YeUXmabhsg+vLxNXlVJPB3b5KBzZqmUGs=; b=VuRQkh/kJZSl7z
	yTZvwSrKcLlX20dXhcNn5Jno0WjkA0P5psDwDaXZ8ZrbYTy3JJMlCJXd8UuysYhH4bQS/PHtDqnDL
	km5tSSbh5mOKF0Tkej+zYjspn/w9JXaHzQARGWF7C0N2+tjgk8m0XK93JQvahrHe0pAZ5st6jGa+T
	fRUqMJvknURnv0HGe3e7IXZQ3rR2Hu2228u3ufmiyr9RGju37R/+nT3+ViaZHGpfZAMon31WRRT/D
	Toq00eXZiJIQs8SzLkdbUZxpXUDZTK93bHr7SQzHxSJWny0qIwyfCKFmL2RXIS6eUSb0RJv68HTEP
	0wCHAv98IZyYfSIsnTyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he0eF-0004Pr-4t; Thu, 20 Jun 2019 17:14:55 +0000
Received: from mail-ua1-x942.google.com ([2607:f8b0:4864:20::942])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he0dy-0004PX-6S
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 17:14:39 +0000
Received: by mail-ua1-x942.google.com with SMTP id c4so1963449uad.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Jun 2019 10:14:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=GR6x4on2th+OpGEr++2MdtxVD5WfNFN9wx4DvQ5w7Rc=;
 b=V8bIRrbAwIjB8y/e3VK5hdGQiO8fdK96fE89vK+8xM34pSYwtIAitElGMyEc8eEZ8Y
 JNN2Dm3GQX4EuHrYdTR03KQM7saTG0dG9xx5zg8ZkNjOfIr6ls5jeWmDIaheAotE/Yfs
 HELQdZl4/gheu42t/o9XX2Hh2YkYYtpBtob1vLOLhf9cgFBMV0rKwK8fnXV2suKtO/C4
 XaCv7FZXM2vP1vPi93jU4r/GnJzEFBq/C2BcDaw/yl5TkAlj+EOjsIQ+vkSq6f4v28Z8
 W3CDYr6Ag4umJu04mO2GC/WVWTh8HbyridbYuXZEfCtzeI4aRTnbJLsQ1DmiR9jSu4Ai
 gbtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=GR6x4on2th+OpGEr++2MdtxVD5WfNFN9wx4DvQ5w7Rc=;
 b=Do64TbiySWuq/ccvDB/4nBu8F9fx3DhRtR4dct+YnUDVJCoX2v1L3FTiyCLGCwBbVJ
 zqzRLYCYHyoGFbOon5I3/Z0CAHECDIDzdyM1qpe10S8AdiZnBshbaQTd5nK9ilK7zYYm
 M4iTJa2IQyLKLdpuGGP/xOdRf8EJVk/Wfy6TgXnYf/PwiYNV8rgM43LwNIBMfS4VA4V4
 +raTSz7+Odok64StBz+dRe0PIrtX5yyVdPnL3omI8repX0VGI559F4p7RrBptJtxbiPu
 g8utvPbgHbLhKlwJqnowrfdx92aksm3Vcfjqb1Q1+aXxcVc6ESP4ji6qiz0ju6pYm6T2
 2Ifw==
X-Gm-Message-State: APjAAAVcx2IwmN8WwkI9lTBZe23tebYddP4uihVGYiiuNwMxbwxJErG2
 QqmD9rGt3fLB6LDmETNEctMb/5MhYkywrIjahs8=
X-Google-Smtp-Source: APXvYqy13gguR6NEUfCLLKpXnDy4AttZXqs4ykBs0SX9Cxiei5TfjAP35fuOn0fKJ5MLZcb+jT6s0DLzf4BvjOV0F9U=
X-Received: by 2002:ab0:2556:: with SMTP id l22mr9364887uan.46.1561050872751; 
 Thu, 20 Jun 2019 10:14:32 -0700 (PDT)
MIME-Version: 1.0
References: <1560755897-5002-1-git-send-email-yannick.fertre@st.com>
In-Reply-To: <1560755897-5002-1-git-send-email-yannick.fertre@st.com>
From: Emil Velikov <emil.l.velikov@gmail.com>
Date: Thu, 20 Jun 2019 18:12:16 +0100
Message-ID: <CACvgo50vSNCTTTKp9D_07tazOE9YkU-zKAsDywvWe6h0NgcEmQ@mail.gmail.com>
Subject: Re: [PATCH 1/3] drm/stm: drv: fix suspend/resume
To: =?UTF-8?Q?Yannick_Fertr=C3=A9?= <yannick.fertre@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_101438_241888_E439B494 
X-CRM114-Status: UNSURE (   9.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:942 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (emil.l.velikov[at]gmail.com)
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
Cc: Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>,
 Philippe Cornu <philippe.cornu@st.com>,
 ML dri-devel <dri-devel@lists.freedesktop.org>,
 "Linux-Kernel@Vger. Kernel. Org" <linux-kernel@vger.kernel.org>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Vincent Abriou <vincent.abriou@st.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 LAKML <linux-arm-kernel@lists.infradead.org>,
 Benjamin Gaignard <benjamin.gaignard@st.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgWWFubmljaywKCk9uIE1vbiwgMTcgSnVuIDIwMTkgYXQgMDg6MTgsIFlhbm5pY2sgRmVydHLD
qSA8eWFubmljay5mZXJ0cmVAc3QuY29tPiB3cm90ZToKCj4gQEAgLTE1NSwxNSArMTU0LDE3IEBA
IHN0YXRpYyBfX21heWJlX3VudXNlZCBpbnQgZHJ2X3Jlc3VtZShzdHJ1Y3QgZGV2aWNlICpkZXYp
Cj4gICAgICAgICBzdHJ1Y3QgbHRkY19kZXZpY2UgKmxkZXYgPSBkZGV2LT5kZXZfcHJpdmF0ZTsK
PiAgICAgICAgIGludCByZXQ7Cj4KPiArICAgICAgIGlmIChXQVJOX09OKCFsZGV2LT5zdXNwZW5k
X3N0YXRlKSkKPiArICAgICAgICAgICAgICAgcmV0dXJuIC1FTk9FTlQ7Cj4gKwo+ICAgICAgICAg
cG1fcnVudGltZV9mb3JjZV9yZXN1bWUoZGV2KTsKPiAgICAgICAgIHJldCA9IGRybV9hdG9taWNf
aGVscGVyX3Jlc3VtZShkZGV2LCBsZGV2LT5zdXNwZW5kX3N0YXRlKTsKPiAtICAgICAgIGlmIChy
ZXQpIHsKPiArICAgICAgIGlmIChyZXQpCkhtbSB0aGUgbXNtIGRyaXZlciB1c2VzICFyZXQgaGVy
ZS4gU3VzcGVjdGluZyB0aGF0IHlvdSB3YW50IHRoZSBzYW1lLAphbHRob3VnaCBJIGhhdmVuJ3Qg
Y2hlY2tlZCBpbiBkZXRhaWwuCgpIVEgKLUVtaWwKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
