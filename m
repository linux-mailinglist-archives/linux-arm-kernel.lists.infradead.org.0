Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11507DCE83
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 20:43:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9gXgyYScLfhgYcvrqM2kvcZKrsusoColeq5ThX/nmYU=; b=LuVVIVdM9AG0NS
	kC9Re9kL5GA1VSBo87PJRMV2UH5C+7FPlZOxS/oNPJyZu5njRYNbHxAIgFVxYjtt67RJAEyIp9txG
	h1MdDAQIy+bdvh31nWNSlQSzsilZKVUVwdOWW3P4X+9U939zwdnidG/8njbidRlSt19daAHnpLz9d
	yhWLitkTAONdBdPR6xxLty6dU+uCg21iIkgY42loA802k4XztfiFVwyQIsNNYjUmw41AU0Pm8gbOX
	JewC/+kpDy/1Cb6SLbkO9JqUHwxKaoKlK6YCnnPigs9U/h2SXZ9RvytB/IoDrl469i2Xybsk/Bteh
	WFNtU50boalnXcUP81Ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLXDZ-0005jW-CZ; Fri, 18 Oct 2019 18:43:17 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLXDL-0005jM-Ht
 for linux-arm-kernel@bombadil.infradead.org; Fri, 18 Oct 2019 18:43:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Date:Message-ID:Cc:Subject:From:To:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Yo38/H/VPNTR27vCNo+k1qotWxZng2FwVKz9Fr3auzY=; b=rkOafqpa+neUIwOfrgfaHmIpd9
 yHAaNVTSEFJzoxE2hIb1ouCS9VeUaDYpu8Xm58k82ZR6P5Zc1i266J/n4Xd4rI6eW4v6cR5Ay5UX/
 Ayq5KFPR9dbxsUqNT4ucNmvhn6VNZwMBdB6/nW2JoTWN8dDwD223uKrpdpBxpmYU+LE4w3aDV6thZ
 DIjoMvN9Ssk8IqL+m2LTkHLF7XOuQ2mJsgvVMZi21BV49GwpWtOQPmHUPKlYA9AAdsmjGG1agS0Wa
 oYzu8XRtcpAfSWydIW7dqfWLN2JLQBJ/fQqD4erWVrkpn6rJ5PTqu9laDo0X19zSVOeP+4tqVm/Rc
 HlF7yK7g==;
Received: from mout.web.de ([212.227.15.14])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLXDk-0003uZ-SY
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 18:43:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1571424151;
 bh=3XlpwwfyFUPCrNlUnQN8tBuu96IXkr2MOifQo4K3Fq0=;
 h=X-UI-Sender-Class:To:From:Subject:Cc:Date;
 b=O0bruNvHav/pX6UpO6wfVfODiUQQHdvT/M3itgRIjQOFiGlow/zVBD+4snB8bUI3D
 iDr38TgbOAM67G6X0jfMxprucHt+6Qpm4LXYgrlgFpJVgOOMxTUXsnCxcGfaYQIWi2
 mdZRBUGop3hPMyhBPUrcQ0ZiS8qt/EyGBKAwgE7g=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([78.48.164.145]) by smtp.web.de (mrweb002
 [213.165.67.108]) with ESMTPSA (Nemesis) id 0LnBPR-1hq4Kp3XXp-00hQac; Fri, 18
 Oct 2019 20:42:31 +0200
To: linux-clk@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, bcm-kernel-feedback-list@broadcom.com,
 Eric Anholt <eric@anholt.net>, Florian Fainelli <f.fainelli@gmail.com>,
 Matthias Brugger <mbrugger@suse.com>, Maxime Ripard <mripard@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Scott Branden <sbranden@broadcom.com>, Stefan Wahren <wahrenst@gmx.net>,
 Stephen Boyd <sboyd@kernel.org>, Ray Jui <rjui@broadcom.com>
From: Markus Elfring <Markus.Elfring@web.de>
Subject: clk: bcm2835: Checking a clk_register() call in bcm2835_clk_probe()
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <522fb1f3-d710-2f86-60b1-4224b8d3d17a@web.de>
Date: Fri, 18 Oct 2019 20:42:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
Content-Language: en-US
X-Provags-ID: V03:K1:8zHFo6yOHoRzs5oRjgK0OaN8M9FbXbA2uMsZXQx/LttjWit8QAN
 esaNHPsAWV+VYWEoy9WyVLZ14Dlcra8kgzqzGfem6OnfOPg4Umo2wjdQIbd9/KhHGbPqs+F
 FT2pVebN5n/6L/+eX0CBtuSGkiYTvOgkAbwQ+hQgx5pTqgEAoj5aVvNte1TE34V1NrZY8+a
 jR+V6P9IXv2ZVHpn0AduQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:W7TcqGjBJ3U=:/oILMtZe5WoS/He1OVv+3Y
 UHMlOJhseoVhWSQPzeGVQEnNuYj2oU8ubINnPmdmCqeiTHuZLKs03YVp7DiYK/28bVGlNW52T
 Oawoe6ooQ91MCyzKs7F144F/jIQEP0qsWWHzQNMUmTZmFeqwGyYugcMVH8RyU1nOkoSZqOD7U
 zF41Zgy6fmI48QKvN2HQ3NQSmnyVbrx5QrfR9mOL9awarxkjcORHHLRZRIW1TbXL11fyqWRjR
 Veh533EaJdrffv3HKQc6sP94g3x5aOrVzns4vRJGy5SLpcNkb3mWaOajsqnplKU0X67BOXqd/
 ubzdOsmXKkI7rvB/buOThIDsmT4p0h5BSSprWek457joFJHGc37uOjyCqEP6jn7nA3Wq4wZ3l
 KTtJzNDghxHLmWVTS6Zz1mr76iJpdL04c/ybLgwG5q2BoAWva53exo+2cdgQgWrkXXPRfcVoD
 Vq2raBEB1GQZAhMVsYzlJHhcsqbX005uz5ZgFc7XfYCB8Eh5fVmIRppNxm6I4kouJC0HMvgk9
 9xVUt3b+CP5xQkvPdLeEXjqr5J9aQ9GZEr7aCPipceUrevBS5tzgZIO2V0ycDR+gMP+m6DSyw
 u8fGxW8jLIdYCb12gXhSyk31G7WSws5wc1n/NZZElByXupgHA2uvB+HN18evh8IdmPSVXFu76
 p8Va6QH8hqC1F4WJjruv9cYj43qI2gkgTqkhGucUFmh179UVbaRzzh+65qYFY/LEW1yShIx13
 C/jc/9ewr2ZjVIt8GmjubdXKPmpcMMka2oymEx+bGW28KbaBveZVhjkeXy04DeLURwkjb7E4s
 bG3++qSCBhzNn8Uk2Ya3cuk1zwd+5CIATWOFKGRu/ScJry83p/DQqK3xp5FZKDNd3Ae1qxtfM
 lu0LixEyFtP7iWw9ZAewMkkicRwvpkCSc011/6VHV+tfPcXMsxWnoohQL0oGzABMTM8tVxMhi
 8UmVHjn30bn0L6/gJirfyFPoysSFdaoqtB68rYw+cJEslQSWSu6+XNq6Pt1hh6g9aXnooXmnn
 LQSUDnma/FExSM7f9MUC5467jkgg+2Xry7KJKfXO9cFuPlAXw4m7WVBUMacJOAI1vxtf3s/Ow
 xJDsEaGwsTcWr1NU0X4xnddJkZLNwrsigg+pEQL2LDvokIYWuPIJSpyEHaqaIVonYc2oqzpLs
 ctxm3M4DgamlimHJ+KPpgjgXavcQzjemjfbNgnnMljLxZyj8CfwbguObTUl9yLvaRXHucodLv
 4egak6d4bB/Tja+Mi6tdWWIVOk/jRaN3ELVSDr7mV6gb/poPnXstH5iNAe0U=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_194328_986646_3A48B947 
X-CRM114-Status: UNSURE (   8.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.14 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (markus.elfring[at]web.de)
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
Cc: kernel-janitors@vger.kernel.org, Aditya Pakki <pakki001@umn.edu>,
 Kangjie Lu <kjlu@umn.edu>, LKML <linux-kernel@vger.kernel.org>,
 Navid Emamdoost <emamd001@umn.edu>, Stephen McCamant <smccaman@umn.edu>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8sCgpJIHRyaWVkIGFub3RoZXIgc2NyaXB0IGZvciB0aGUgc2VtYW50aWMgcGF0Y2ggbGFu
Z3VhZ2Ugb3V0LgpUaGlzIHNvdXJjZSBjb2RlIGFuYWx5c2lzIGFwcHJvYWNoIHBvaW50cyBvdXQg
dGhhdCB0aGUgaW1wbGVtZW50YXRpb24Kb2YgdGhlIGZ1bmN0aW9uIOKAnGJjbTI4MzVfY2xrX3By
b2Jl4oCdIGNvbnRhaW5zIHN0aWxsCmFuIHVuY2hlY2tlZCBjYWxsIG9mIHRoZSBtZW1iZXIgZnVu
Y3Rpb24g4oCcY2xrX3JlZ2lzdGVy4oCdLgpodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20v
bGludXgva2VybmVsL2dpdC90b3J2YWxkcy9saW51eC5naXQvdHJlZS9kcml2ZXJzL2Nsay9iY20v
Y2xrLWJjbTI4MzUuYz9pZD03NTcxNDM4YTQ4NjhlN2NiMDlkNjk4YWI1MmU1NGY5NzIyMDIwZWVm
I24yMjQzCmh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4L3Y1LjQtcmMyL3NvdXJjZS9k
cml2ZXJzL2Nsay9iY20vY2xrLWJjbTI4MzUuYyNMMjI0MwoKSG93IGRvIHlvdSB0aGluayBhYm91
dCB0byBpbXByb3ZlIGl0PwoKKiBXaGljaCBlcnJvciBjb2RlIHdvdWxkIHlvdSBsaWtlIHRvIHJl
dHVybiBmb3IgYSBmYWlsZWQKICBjbG9jayByZWdpc3RyYXRpb24gYXQgdGhpcyBwbGFjZT8KCiog
V2lsbCBpdCBiZSBuZWVkZWQgdG8gZGVsZXRlIGFueSBpbmZvcm1hdGlvbiBhYm91dCBjbG9ja3MK
ICBhcyBleGNlcHRpb24gaGFuZGxpbmc/CgpSZWdhcmRzLApNYXJrdXMKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
