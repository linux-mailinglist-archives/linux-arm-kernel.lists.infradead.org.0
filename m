Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 677F4F8B19
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 09:52:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=27plo7KA6RDTa9IWGgs3Tosxfl3nyTVnKBUBu66sWqg=; b=O7/pQj+rBtvGKc
	CLGzvDgqWzt1xGJvjMnb7EIRIC6S3ywG7mxOmPYpuG7i0Z7rDbVaJyUP8KQ3vfFTq/MjCCGPsCG6v
	vGe6qp7B1wxb3TN0UHYqUGt+A9zmPluuhotV8iLszI8NRG3rwF4wbzLzb5CxmaXqSqqQm0+CE3aVg
	oYiM4wfI1+DOBog+Diefp7UtFH9yS7bijaCE9MEqQYEI1knbCDl67tzwDgPDhB2lkp7AS31fQwklu
	UmGwx5xlVQ12VOWIf+yMmECdDmGN7A8M8iKvhX3PwLAqQJr/loGXbP37XDw2Iozi7lp/AP0UpzBgB
	TZ+LdHweE9iVCMvetrUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iURuD-0003TW-LN; Tue, 12 Nov 2019 08:52:09 +0000
Received: from mout.web.de ([212.227.15.3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iURtz-0003SS-EE; Tue, 12 Nov 2019 08:51:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1573548709;
 bh=/69UOQg6AJRBn5Y5kan0J7mFNy7LzuCtg2qizG07W3U=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=CfYGUhyhqv2ov2/mK34mU8WpzqoWtQZ6ohIqgRfrmHApwknxVdV4eItTjQRaB81/z
 gO81xn0gJpQWjkveKgV/amAjiNYxNQ8Exx563iMd1e24Y0mK1FMZ/ecxmR2iLRYAZ8
 4QAuPF4Er5bBwRjR6pk8eljkYoeIFhn/WsHlRKe0=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.43.108] ([89.204.137.77]) by smtp.web.de (mrweb003
 [213.165.67.108]) with ESMTPSA (Nemesis) id 0MeBEk-1iFWlw0uZ4-00Ptgl; Tue, 12
 Nov 2019 09:45:15 +0100
Subject: Re: [PATCH 3/3] arm64: dts: rk3399: Add init voltage for vdd_log
To: Markus Reichl <m.reichl@fivetechno.de>,
 Kever Yang <kever.yang@rock-chips.com>, heiko@sntech.de
References: <20191111005158.25070-1-kever.yang@rock-chips.com>
 <20191111005158.25070-3-kever.yang@rock-chips.com>
 <ef8830f3-10d1-7b71-0e18-232f2eaeef2d@web.de>
 <1eaef5d5-c923-da56-b9c4-48d517b3c969@rock-chips.com>
 <acbab893-9e9a-cfe1-67bf-a9e2b2e50114@fivetechno.de>
From: =?UTF-8?Q?S=c3=b6ren_Moch?= <smoch@web.de>
Openpgp: preference=signencrypt
Autocrypt: addr=smoch@web.de; prefer-encrypt=mutual; keydata=
 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
Message-ID: <88ad7dc9-5299-791b-e285-7775ddf885ba@web.de>
Date: Tue, 12 Nov 2019 09:44:57 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <acbab893-9e9a-cfe1-67bf-a9e2b2e50114@fivetechno.de>
Content-Language: en-GB
X-Provags-ID: V03:K1:P631vcNOXvn80kQFRh1MMqhKnqdMniiDSlzA/Fe9ZdqNLhl8aCJ
 BGfLB3CLAOIg3h4IKI2AqTKLVWFdsJuWJp5XMHKOvhHv53IcSZjaMF9kGYt7QAEN5dl3R91
 6/ai5G0iT9esdi0xHryc6hzLrXlTGJSvLEN0irVF8Vw6uB38l3eBeGTLsvp2c+M6KiF+mjF
 02UMB5GIgAPFQNp+z4ong==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:zbepryrkls0=:zZPOZZ5P76UQ/RQpVvdxYR
 n5dLlfWsk4M2dF5AEG3HAY9kF/YncipsdTba9KQL7SD/No2vfCFDquZFQBhEQFgi8iCjnli+h
 jlaLN4raCq4a4swoT2NctbIREgXX7AG55/kAFstiT0qLcH+nBPBRu1piNAEEX9CFYtSqolTfc
 9/EgKLQjynxHeuQPWbFyHXkLCd5y/acHNDoi5zrpKLE6aKnT0aJW1xdyQ0gvAPxY9YIjQQLYL
 95tjawyc09/R6t6pTCA43NM2lL9IpI7G2/7YDlr91Ik5IN5N5By1hSpW0E7zepZDuTRlqJ51e
 xybYo5heqvFyrqDtuM9NFnNZGiOfmvQF8fADowVYo8D4mBYkdqNGp6ge0QZTodddxI7T8DXim
 g3+Dl/bw9gjKP22gp6WBWzlBMyqw5U8XYxaXCdKkMt/5YJ3Y256r1eq3BHGGA6YXJC7UzkBki
 rVrEjfdLgwvTgLlVTQdOieWZaiIN1CFl634afgWPGaLxeFCCuva4i60hU7lHcAxIpiqb2ZMlH
 I7xBjHOurA0HaADpMIDPME39jLQJFi6GrSOhwO9PIEhdTzE2yzUi82vIJwkeP3+tBDcQczveC
 St0auYdwYvS4QclvoFWpcgqczwc/Xz0dNIm7fzoHT4aRBS5p7b4aWHZJdTWRgD83KwgXaeBkA
 iRhgX99cecHafKUp2hq+57ketNavSu9jVMZTXNoF2gk9QCXJONhqPWXDmhta9tV9bLOaquyvH
 BdVQa+cddD8icIdNp5Rn0EVFc2WLgi0usIDm40TWrCOg8XAl05Zycm9P3V+kngb27Rjv734Zi
 a+HkCK8StJ3YwIpJyGCjOLs2fKS31oK75gHWnhlWW/apg6Wu5T2f6EiKhxpRb1R9WGzxVzUpe
 yLqhlbm6ViYnbb63xXJ1bYRcSIKoNJMlVpQM9u/j8PTzLiiU1bn65s4JkbfQ/Pyt3kIWnjzSX
 W7hTsj4FltUzx0xRtbUwAogoEsEEQWhgRCCpppYAnbvUAhWilIL7XpgAK6zurfufdI8wiTAjo
 gGX+T6nIJ4FEQ3SMivo2eNjsjCBzrb/xtS4YhXQWybRukFEQLItDoIM0L9fsKV7HTRRUihKmg
 QSm9yn4U7WA126WzluBUEku7T/TZCni/d9C6Ib5daSI+irHrcv84/CujJMrCE+bFghvlfs40K
 NYR3ZzLLV2p6ebvsFwL/tPH7CnyOsqL7jW/quVK1xMFLio2k/OTBgTFl67s7N3im6QwUIjQIW
 AGJYZWoJKkqoUHiwIYoJu5WQD7ScsuwRyavUTXw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_005155_776709_DB52CD13 
X-CRM114-Status: GOOD (  11.55  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [89.204.137.77 listed in dnsbl.sorbs.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (smoch[at]web.de)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 =?UTF-8?Q?Andrius_=c5=a0tikonas?= <andrius@stikonas.eu>,
 Vivek Unune <npcomplete13@gmail.com>, Alexis Ballier <aballier@gentoo.org>,
 devicetree@vger.kernel.org, Katsuhiro Suzuki <katsuhiro@katsuster.net>,
 Robin Murphy <robin.murphy@arm.com>, Elaine Zhang <zhangqing@rock-chips.com>,
 linux-kernel@vger.kernel.org, Vicente Bergas <vicencb@gmail.com>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Pragnesh Patel <Pragnesh_Patel@mentor.com>,
 Oskari Lemmela <oskari@lemmela.net>, Akash Gajjar <akash@openedev.com>,
 Nick Xie <nick@khadas.com>, Peter Robinson <pbrobinson@gmail.com>,
 Hugh Cole-Baker <sigmaris@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Andy Yan <andyshrk@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTIuMTEuMTkgMDk6MTYsIE1hcmt1cyBSZWljaGwgd3JvdGU6Cj4gSGkgS2V2ZXIsCj4KPiBo
YXZlIGEgcmszMzk5LXJvYy1wYyBydW5uaW5nIG1haW5saW5lIFUtQm9vdCBhbmQga2VybmVsIGFu
ZCB2ZGRfbG9nIGlzCj4gc2hvd2luZyAxMTE4IG1WLgo+IElzIHRoaXMgYSBkYW5nZXIgZm9yIHRo
ZSBib2FyZD8KSSB0aGluayB5ZXMuIFdoYXQgSSByZWFkIHZkZF9sb2cgb24gcmszMzk5IG11c3Qg
bm90IGV4Y2VlZCAxLjBWLgo+IEhvdyB0byBmaXggaXQ/CllvdSBwcm9iYWJseSBuZWVkIHRvIGRv
IHNvbWV0aGluZyBsaWtlIFsxXS4KClsxXSBodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL3Bh
dGNoLzExMTczNDY1LwoKR3J1w58sClPDtnJlbgo+IEJ0dy4gdmluLXN1cHBseSBmb3IgdGhpcyBw
d20tcmVndWxhdG9yIGlzIGlnbm9yZWQgYW5kIEkgY291bGQgbm90IGZpbmQgaXQKPiBpbiBiaW5k
aW5ncyBkb2MuCj4KPiBHcnXDnywKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
