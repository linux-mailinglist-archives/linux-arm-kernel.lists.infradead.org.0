Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F14062B669
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 15:27:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tx2+LxrbXub4MSbWioiZtmm1OIj6VcfvRMPKK/eL+Oc=; b=YCyLU0Bntnp5br
	UQZzNJ+XN7YWzoaEiNgDF1R850aYc6nvHZArPtM4rf2vnJfVP/dlxziZ+e88otYf8UGp3tXJ+yUs9
	AA2bWrGMTCHAb9d6s0j1clfgJ0Cpiz9HgShGqYsXxUH5F/j/MeodVtVekc3c5+fOlTIGPpZ7UqYYI
	3twOrqQT8uJqEJc7zGlYyhKJ8vVC1rrTepOnlqIeIuO1IMr1V4PKr7OuvTtuLgI2H4DGtiJ5Qx7/H
	0G81Vazw1XRwNq08AcRVqPl0dnqvO7MlyyzH+JkWwRL+03pHdGwcsex9PSlA2vKDLOYR4C65CqcsZ
	Dbozy/deL0oAY409bc4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVFfN-0006vQ-Kc; Mon, 27 May 2019 13:27:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVFfH-0006ud-47
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 13:27:48 +0000
Received: from localhost (unknown [171.61.91.186])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id ED6842075E;
 Mon, 27 May 2019 13:27:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558963664;
 bh=5LGQZbcDiGADtRy7nX7CzuVlxf33jXUOVsnEJ3zPY0c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=uUXx9qkdl3PVY7xkVd58jgCJb3Lp8OiMlxFqQAZ1sXvFApYBGITyi/UALTTG1JNUy
 b4OWejyk5gOFmczJsWLyvzX/xMHkG9aA+Gs4E2Yyer9SEsRVyYUwwjJhI9jtNeZVmJ
 yENXghH6AMpxYO/JJtw0k+PYaBdMKfJNOOojTcVI=
Date: Mon, 27 May 2019 18:57:39 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Weitao Hou <houweitaoo@gmail.com>
Subject: Re: [PATCH] dmaengine: use to_platform_device()
Message-ID: <20190527132739.GJ15118@vkoul-mobl>
References: <20190526071324.15307-1-houweitaoo@gmail.com>
 <20190527064303.GG15118@vkoul-mobl>
 <CAK98mP9teTxZn9mMZ_yXSmC7h8gimgN14kX=GT0Q43O58zC-rw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK98mP9teTxZn9mMZ_yXSmC7h8gimgN14kX=GT0Q43O58zC-rw@mail.gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_062747_184040_0BB132D1 
X-CRM114-Status: UNSURE (   9.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: alexandre.torgue@st.com, linux-kernel@vger.kernel.org,
 mcoquelin.stm32@gmail.com, dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgV2VpdGFvLAoKT24gMjctMDUtMTksIDIxOjEwLCBXZWl0YW8gSG91IHdyb3RlOgo+IEhpLFZp
bm9kCj4gICAgIE5lZWQgSSBhZGQgdGhlIHN0bTMyIGRyaXZlciB0YWcgYW5kIHJlc2VuZCB2MiBw
YXRjaD8KClBsZWFzZSBkbyBub3QgdG9wIHBvc3QhCgpBcyBiZWxvdyBzYXlzLCB0aGUgcGF0Y2gg
aXMgYXBwbGllZCBhbmQgSSBjb3JyZWN0ZWQgdGhlIHRhZyBhbmQgYWRkZWQKc3RtMzIgd2hpbGUg
YXBwbHlpbmcsIHNvIG5vIGNoYW5nZSBvciB2MiByZXF1aXJlZC4KCj4gVmlub2QgS291bCA8dmtv
dWxAa2VybmVsLm9yZz4g5LqOMjAxOeW5tDXmnIgyN+aXpeWRqOS4gCDkuIvljYgyOjQz5YaZ6YGT
77yaCj4gCj4gPiBPbiAyNi0wNS0xOSwgMTU6MTMsIFdlaXRhbyBIb3Ugd3JvdGU6Cj4gPiA+IFVz
ZSB0b19wbGF0Zm9ybV9kZXZpY2UoKSBpbnN0ZWFkIG9mIG9wZW4tY29kaW5nIGl0Lgo+ID4KPiA+
IEFwcGxpZWQgYWZ0ZXIgYWRkaW5nIHN0bTMyIGRyaXZlciB0YWcsIHRoYW5rcwo+ID4KPiA+IC0t
Cj4gPiB+Vmlub2QKPiA+CgotLSAKflZpbm9kCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
