Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C61B8E6130
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 27 Oct 2019 07:56:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:Subject:References:To:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2IVTwyZvkanB7JKSVWHz4YOqE8i41UoT6oRz/aj81UM=; b=tstaJiaBjcL1A0
	a9G3ut3Lk5Y2SXTD9++gGHIoaJiqfEAgjhzfuWWveOHeyRIhyhstjN9kJ0CsqtLo+SKKUoWkOn1pf
	oX9AD0/RMmjcLt+nAiHxVHTI33LCiHMO8qur3AFOJ9h+K3H+z4pbzU21WwjuWFhl4JhXQW3gLbPFY
	dV6XHNnQFeSEOQEjFgfoLVdjF6GwUsEII0K0uUTCxBbJIGDiNVYDXy9oNfl7dInJA5NaSMI/z6A0s
	HlUhm9DEued0nz81ej82NqFRBCL00J29sapR5FHywLuz7i0RypuYc/D0SBKoOPeNvdj8vioRoMnV6
	F2/t7BuWgk1rXscNu2oA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOcT4-00062H-96; Sun, 27 Oct 2019 06:56:02 +0000
Received: from mout.web.de ([212.227.15.3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOcSu-00061p-G3
 for linux-arm-kernel@lists.infradead.org; Sun, 27 Oct 2019 06:55:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1572159331;
 bh=ARdfih51ut3Wc7cOVlkAxrqjxZ2ICiWrQ62g5bzsKEw=;
 h=X-UI-Sender-Class:To:Cc:References:Subject:From:Date:In-Reply-To;
 b=r2WyeMku0GOiYK4eP/T7s6h8GA3hl7JMG8ca49Y5Fk/RaftH5p9c7i8NGnX0CBve4
 yV8ooBB6Dpp8xjzZuSp4tVGHlxTfTQACHkJhzchCtKDYLg9rXVekXEZhH9Fh6tfd2t
 OTM0xNXtF4OGruEdG5rZSnFHXNYIr/RfWzDcwlkw=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([93.132.56.174]) by smtp.web.de (mrweb002
 [213.165.67.108]) with ESMTPSA (Nemesis) id 0LfAfQ-1heV4N06Zc-00ooQ1; Sun, 27
 Oct 2019 07:55:31 +0100
To: Navid Emamdoost <navid.emamdoost@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 linux-media@vger.kernel.org, openbmc@lists.ozlabs.org
References: <20191026042519.29446-1-navid.emamdoost@gmail.com>
Subject: Re: [PATCH] media: aspeed-video: Fix memory leaks in
 aspeed_video_probe
From: Markus Elfring <Markus.Elfring@web.de>
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <bec85427-66b8-e0fa-9ee2-07cc77cf4a7e@web.de>
Date: Sun, 27 Oct 2019 07:55:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <20191026042519.29446-1-navid.emamdoost@gmail.com>
Content-Language: en-US
X-Provags-ID: V03:K1:FmGICvn0LmSTTD7R93PU62N8WsZYZ6cdVmszCY8Q/JcMVVRUbYb
 Vp0gqGawU/a6Qlz1JBoLAhB28rowaZFN8uoAfGXOHvvxbqZs8UpzUjC1qx/sPDrngPe0zPp
 TDOb+KZZFwULLo+UwbuDjrmLxEYbLjOg7cujUQWSEr/+ZGhJ8VPHpmBAKRY5Eyuf9HunTNI
 dGvxHMQ43a0KQ0Qu/oyjw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:R+xiGTDl7dA=:sh8EzI93bQRDuPvQdl9imp
 WVZ6pg9rVRaIBMXmIRLkJIQGsjcTN3UpuB6X1CT3Fv4pLgGUE+hHcLmYJa3BTIPGyXWASFsVL
 f5CRLRDjslXCy0Y8swPyZjm1tDxv7F5NA2wY2PoIRR47kA32QJa8WpyPAB69gqUOdA2++xozh
 lkjzPSJVPe0acMZPbOxKHnY1IglXSuTpVEJDtepV0tU+cwD3blaLLZ/95RviKaZWnU51KpD37
 FrWtz4J2Tes8ooQQHBrjqbiY8m4z6TZn/resnpkmygDR/VRLziWBz0nl0qUT3Ma1VbEEQ77Xj
 /TkIoR6P42m0mFXvzJ+39nktoDEgKPmiLOllLfI4UBXXsgbWFL9jJDdK6zGsh/W9FAnei92gq
 pqBqDy9H5yrTkeB2oRmyBdR2jK1qOsDvJ9IuJBccX2ibPAsPH63xAgmeJi2fNFKcfCY0fnHPU
 fWDpsEFR2bEVfQUG5daCdwOdl5bR+mZRcajh+WztfjZu1MwlN6QSNQlSDKFqMUFpax/hY7qlp
 q6V9dArr3EUCKAp2qL8AuWxrkabG115dZ0QSK8MImaleedcHRBIqUr86cPQaQpa1yzyZcgW53
 /nc7KeImYsPilO9jydJN+6auttg2r3p9RzSMzBzAfwHxTa+0kPK34dj6E+js2r3U8HdOArzPD
 cG1fGb+5QN+EGITVFHUKnjNY12VTwxWZhPK75jN2WJc7r7lEpYHs3GzIah3ITeGomDN76cwgQ
 QS9IrLmlJX81S9jOPqjIupxQn9pqKE+iQQkbZgdOi0x4WSpE+fj8SohR9/Zblf+jzy2iJVmSH
 skbYLeneiJeLIIkRL32Z0WMOcePJVFFyWZx+jo1kS27eKSrwncnbhlJ+91QUS52/ktc08d+LN
 zLhSToH9j3c2MaJ2BfJkyhWakPSwJG57LDgJwivUKWPzZhKpf0NbykBPSxTrLt05+KEnO87GS
 qQJi8UFWXYbOMdXaCwzv2Y+KFfJ0/+68bQgBEXk+YkKldpAqWg7ctGCuuSii7b4A6v9uVsktf
 ZZEjTirbgls2Iz9snx5tUuyb3dcZdGULDU+/Ks1nvG/VuloaC4CJ4PKxyzGvfs3iUs8NO4lP9
 nwv6IKNG/nEUCH78gaoQnhNIo2KsybkY/FjngMHyoTJNnzeu9mbfrRpw6HPF/5W2j/qxGhTIa
 l8j0tGAFg4Xn7EzPLJox1HMKIwjxLk64JH2r5qkrwqwIa2a3QapdxqVWJUXq1n/Eyczy6swIo
 q7Ork700yQlXLZzZOQkXsc58hZrZPx+Aa7wr1Nb8FYuDlqjQrLmOQ1lxcQAQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191026_235552_866984_94A0951F 
X-CRM114-Status: UNSURE (   8.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (markus.elfring[at]web.de)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.227.15.3 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: kernel-janitors@vger.kernel.org, Andrew Jeffery <andrew@aj.id.au>,
 Kangjie Lu <kjlu@umn.edu>, Eddie James <eajames@linux.ibm.com>,
 LKML <linux-kernel@vger.kernel.org>, Navid Emamdoost <emamd001@umn.edu>,
 Joel Stanley <joel@jms.id.au>, Stephen McCamant <smccaman@umn.edu>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

4oCmCj4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9hc3BlZWQtdmlkZW8uYwo+IEBAIC0x
NjYzLDE4ICsxNjYzLDI0IEBAIHN0YXRpYyBpbnQgYXNwZWVkX3ZpZGVvX3Byb2JlKHN0cnVjdCBw
bGF0Zm9ybV9kZXZpY2UgKnBkZXYpCuKApgo+ICtmcmVlX3ZpZGVvOgo+ICsJa2ZyZWUodmlkZW8p
OwrigKYKCkkgYW0gY3VyaW91cyBpZiB0aGVyZSBpcyBhIG5lZWQgZm9yIHN1Y2ggYSBtZW1vcnkg
cmVsZWFzZSBhdCBhbm90aGVyIHBsYWNlLgpIb3cgZG8geW91IHRoaW5rIGFib3V0IHRvIGFkZCB0
aGlzIGZ1bmN0aW9uIGNhbGwgYWxzbyB0byB0aGUgaW1wbGVtZW50YXRpb24Kb2YgdGhlIGZ1bmN0
aW9uIOKAnGFzcGVlZF92aWRlb19yZW1vdmXigJ0/CgpSZWdhcmRzLApNYXJrdXMKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
