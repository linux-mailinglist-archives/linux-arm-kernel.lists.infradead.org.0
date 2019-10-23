Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F4C6E1304
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 09:24:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:To:Subject:References:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q+JyQ47z+o7QaQRDJzPkuIinrN84UgwGxm5+9QiJi4M=; b=WymNPOrwjx3uzx
	jgNFmj15k/UzpF6sYsQpNw/8Y0JgfNUm0tEmlcOnMiQci3MXXqCxWBkriQNz9CHiSzDkiEM/PthYH
	dw7MJc5VZhIsmcQ1nBUtR2JRFUsOwKMwaqbDRZchNOxnPlCx8eSQZU3Qe8iRGFN/q9oflX/0kclKB
	gz/68MSv5tJhiyQA7Ajh7abRayJOyShPN66+i1IcHv/K40g3j1EaDLt+a5vqEkQ36H5SUZRp3m2r5
	9XofADW6c/WP8PUvFGHNWI/9aBQH0CoIj7WgE/ArmUMNwFTx1RnMVkjcHgVMgV8ICKU/PB+/ehptw
	zCZrzb7T5brQxYLxRthA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNB0c-0005hW-7r; Wed, 23 Oct 2019 07:24:42 +0000
Received: from mout.web.de ([212.227.17.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNB0S-0005gk-A8
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 07:24:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1571815448;
 bh=skmrCU4cvWHof6AkZwFbDtYP1ZNwTFh6o6IDe79PtSU=;
 h=X-UI-Sender-Class:Cc:References:Subject:To:From:Date:In-Reply-To;
 b=p95C1UonUPcUS39Pk/WHerzB+WDj/RmPhsYA+pVoQN9nMA5g8bqpmGA/rs+gcWoLx
 ryXasS++WsQXXxZ67QhyAFTLDMCwuLa7iEIyLL567YPHf2a5LGN/+jAD6fb7U1L1Zd
 s9L+warx//TfmZ4DkMaessywKC36eD09Qkre5Dv4=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([93.135.140.249]) by smtp.web.de (mrweb101
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0MPHC8-1iInHM0RAu-004SpJ; Wed, 23
 Oct 2019 09:24:08 +0200
References: <20191023044737.2824-1-navid.emamdoost@gmail.com>
Subject: Re: [PATCH] clocksource/drivers: Fix error handling in
 ttc_setup_clocksource
To: Navid Emamdoost <navid.emamdoost@gmail.com>,
 linux-arm-kernel@lists.infradead.org
From: Markus Elfring <Markus.Elfring@web.de>
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <2cd566ee-0467-1e06-98dd-aacb3ca42e76@web.de>
Date: Wed, 23 Oct 2019 09:24:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <20191023044737.2824-1-navid.emamdoost@gmail.com>
Content-Language: en-US
X-Provags-ID: V03:K1:9gF365o0UcilwO+pK5RggT1crT4SSoxmqNc/+KoSNeEL/AgGuPK
 9bV5/6Pym0AbAidK5f1Q0ukKa1QmBh2RTA60dHhmIoh+xJyN9gtVKtQ2IQ1wcxbVEhJF6zm
 gmSqgMt5sVMxC3SLKXVWQ6SX25DApyWmLR4Vchp4fk3/j1nUXeqMxqn6nepqc+yQwF9nQ9Z
 WfU0c22/r9Zgh6xe3UCdA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:KH10sGuqIuQ=:4PaQIEJRAGAg0EAOy5bXly
 axni38kGNM7wHEEgp7Em+n8OsvnItmOQ+zkT+Wgmyhn4U/qLGay2+kHGCTFuSQCdN7r8hcWq8
 ZrsVMR3on83PmJ8lLclXi27JqcAxSF6j9uDn24GZIIFI8GXtZHzxU7yApk6KjLQp8t2znUWNg
 6rwMholuJwBLX77Iy5eKZPFwW3C0xcAwP4/6/yj1b2VotivK/p2TTQueLP+6C0eieaFDBEf4J
 3WrjDRzctOF7q+MzGV8Y6z6wLgDY03f26rQqHBxdIXZvNOEktlFVE+yRStSNrcZn7j3g1Dn2M
 1usMZ7BuV7w0xGbu2mHUL5UcZAiHnXUG4o5cKcMcDg/2QSaTh3LX0tDjrSbx50s6968XGhCmx
 NSbxLDCGeTCwVQmXnv2zmVEkhNc8la7XXCoyRefFumXrFtetY9DkAIQgD1YxtyD23n1GYZEq2
 Pgg+mCDdGVY9EOjUjPQGcHzvfwZW3h7Aaq2+ZukeXWC4mTOfDYfwKHNyj5G4iTCQEhhO5bo/e
 IqJBiQAHHXVObU4BQjI3oXZMHnQp+BNaiA6KyTZ5lrQ//wQkCLHo2UQl1DdQtsfxOT0FeicHh
 gE2DQoRRRUr/VhBfZfraSB4t07A82JZda6/cStd+ctiDYYi01nXH+aiPb+42J7Z/CtouczJMq
 X+pX4RwkTIiaB3TE99kVk5YX+JCLwSjibo7oam+UkNM9CNG/yWSrII4C6xo4d6jPh9ZeAZmgU
 +KIY7FwyAbZrL7G/lf+Cmd/4MLsVNChJ2cDOMbU7ID1hVyk7u+l3w3KxDGgGNo/TSeXQfotgG
 jJpZyJJrPpZWimXB11qJ6h7AYaPbpe7KIwzYlc3GlXu1gUlF4ONhg+g5stYb4kjGuwL9toROF
 6zTKiY+KnR7qVvKbMZyPfayAyqSTrTPSGYVY2eT6bixHf79zyiQEl8VpXtnXJES51UiSXdckB
 czrH4OndWri+tmxE/aQXRuWgg8eK9zMnLNSIOH/MKHpCHlLxGtkEAVe9Xnz91O3gWSIjdJ4yB
 LM6yrHqgS3VyxcU0uoIUgu/TWmOXZBfsV4hF8hSyMBwoV8iwekZnhvp7DpsB9YVNnMLQqBcl3
 r9g278CxRiQTqXUnRx0sfPtE8DvKAWcaHvh50eaj9NyVQIi6HA3g8Xa6B4AXRy53lqhxaB93W
 iWPEnNeVYSG9RQIE0dp+NuTJtyMu0bxZPWTIXV+6GdvYgaKSIDI9SOlKv2FXnXORgw1g2LtP1
 zga2v0kz2uyw541cqBlcmYFL0Ev3efvRqwc8q93cjCCglPupXukAXXIzM+7E=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_002432_688356_DD3E9107 
X-CRM114-Status: UNSURE (   9.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.12 listed in list.dnswl.org]
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
Cc: kernel-janitors@vger.kernel.org, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Kangjie Lu <kjlu@umn.edu>, linux-kernel@vger.kernel.org,
 Michal Simek <michal.simek@xilinx.com>, Navid Emamdoost <emamd001@umn.edu>,
 Stephen McCamant <smccaman@umn.edu>, Thomas Gleixner <tglx@linutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

PiBJbiB0aGUgaW1wbGVtZW50YXRpb24gb2YgdHRjX3NldHVwX2Nsb2Nrc291cmNlKCkgd2hlbgo+
IGNsa19ub3RpZmllcl9yZWdpc3RlcigpIGZhaWxzIHRoZSBleGVjdXRpb24gc2hvdWxkIGdvIHRv
IGVycm9yIGhhbmRsaW5nLgo+IEFkZGl0aW9uYWxseSwgdG8gYXZvaWQgbWVtb3J5IGxlYWsgdGhl
IGFsbG9jYXRlZCBtZW1vcnkgZm9yIHR0Y2NzIHNob3VsZAo+IGJlIHJlbGVhc2VkLCB0b28uCgpJ
IGdvdCBvdGhlciB3b3JkaW5nIHByZWZlcmVuY2VzLiBUaHVzIEkgaW1hZ2luZSB0aGF0IHN1Y2gg
YSBjaGFuZ2UKZGVzY3JpcHRpb24gY2FuIHN0aWxsIGJlIGltcHJvdmVkIGFub3RoZXIgYml0LgoK
SG93IGRvIHlvdSB0aGluayBhYm91dCB0byBvbWl0IHRoZSB3b3JkIOKAnHNob3VsZOKAnSBmb3Ig
ZGVzY3JpYmluZwp0aGUgcHJldmlvdXMgc29mdHdhcmUgc2l0dWF0aW9uPwoKCj4gU28sIGdvdG8g
ZXJyb3IgaGFuZGxpbmcgdG8gcmVsZWFzZSB0aGUgbWVtb3J5IGFuZCByZXR1cm4uCgpXb3VsZCB5
b3UgbGlrZSB0byBleHByZXNzIHRoZSBhZGRpdGlvbiBvZiBhIGp1bXAgdGFyZ2V0IChhY2NvcmRp
bmcgdG8KdGhlIExpbnV4IGNvZGluZyBzdHlsZSkgZm9yIHRoZSBjb21wbGV0aW9uIG9mIGRlc2ly
ZWQgZXhjZXB0aW9uIGhhbmRsaW5nCmluIGEgZGlmZmVyZW50IHdheT8KClJlZ2FyZHMsCk1hcmt1
cwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
