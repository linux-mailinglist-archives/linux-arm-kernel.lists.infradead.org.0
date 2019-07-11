Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DEAA6569F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 14:16:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=giEMubcF1uLQk0QW9/F3ab8SwGydaSuUP4iJpvVONcs=; b=Ya5S0wCGVOOd70
	jSUAzR+NLtn0jLMiKtkcUNKFs/0pzQHg7Rb9q5aght3+R8S+zzvXSSe8eGSiq7uBF0WFtcjLQ9TJ5
	rTVLR3QzCWVu6AcEU05FbkL3YtQgeSMYfUPIeGRULgrQbFibkomHnpv8ZmlkK2NzwptmLRP/OOr3L
	k/XzFFpAPtf2KCPTBmetf/3Vr3KjXzzvNunhu95fXGdshGbkYFyJPdU9LVNtqfYt4HPIpMDeD9n53
	/YlpOfV4CY9EcUw6Iqgr3YNO7HVaOGdZRIbldhb0uduIJML/pzbKAd5TzEfPdVpEM5NTa0mxuwrVN
	mr4XqJM8U3nGCABMPclA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlY0F-0000BE-TF; Thu, 11 Jul 2019 12:16:47 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlY07-0000AZ-Q6
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 12:16:41 +0000
Received: by mail-pf1-x443.google.com with SMTP id y15so2682313pfn.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 05:16:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=ebaI7JZoCfM256GUV8nZnCzT8goD+tJe0e6XvNMsOn4=;
 b=AAyusSQWWFQRi1vScJOtNT6zNZtyrWwvjH5sZArjCya6rXeigax5PS1E8fW0vvrwJ5
 s5n94IqdYgqTC3i8ufS4TvWsKjSBa8+CrQND8SDZf7z+XvViOrT/2BL+jXb2a3BBV3ka
 QsRfHH82Dj03jUVI5N4kJr5MegnMGbvpI7n3Ht8FExOTKEImAMuORGJbsm2nwWDNFBEX
 ufRM7ZPgwbthjeBjtDjCuixP/mVC2pkvaUYyvuC8ssgpEipmAB0IEZDB0eENVpgeySAp
 olFAf2sachkLqVqRLK1jT2+5eby7YuDLP6TRQrBAhAkIFaD1UhTL1daCTodxOErkwSqh
 0LCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=ebaI7JZoCfM256GUV8nZnCzT8goD+tJe0e6XvNMsOn4=;
 b=J6DsMF0uRmWwYKNP1kLu5hrtbWQuHlolVvNUZIXKKCklQ1AnYngxxNCTfwH3M5+/po
 n+9oJ99cLt42HdGKo/m5UBdAbwvhpU0q+WETQKfrXHCSKEQUZiaWfXSW3KqqME4zJzZo
 GfmHScWq/gd0OvD0vmBveyxhVrQfcNF9mRXMRLDU5UqFlU8Wn6qUk6c6PpHk7SdhYn44
 0fEPYUKJKLEJLo2hwVIaw6as/ypZci8KyaRyuUjMV/5rZUduuuiuQ83+HDViLYkEF4i1
 6n392Hkoj8Vxj1Wk3mB5IEQbc44tnu1MCT41/RasQz3KMdb++EeUVjiVyGskhGGLZahj
 PbCQ==
X-Gm-Message-State: APjAAAU4set9fehoaN3DrnZZ71aBLqGOf+J5aw87qOMMVriEbzcbSU3V
 O5XsdtlqP4xp09+llEg8sc8=
X-Google-Smtp-Source: APXvYqzqzYQOKBq4miwPew8lzHQHfzU1AEc81YwR5rue/4y2BWib6z/bCeoGPD7v/JmU224bnamYjA==
X-Received: by 2002:a17:90a:cb8e:: with SMTP id
 a14mr4472521pju.124.1562847399177; 
 Thu, 11 Jul 2019 05:16:39 -0700 (PDT)
Received: from icarus ([2001:268:c144:cf11:d03e:81be:e250:5da0])
 by smtp.gmail.com with ESMTPSA id a16sm5951841pfd.68.2019.07.11.05.16.35
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 11 Jul 2019 05:16:38 -0700 (PDT)
Date: Thu, 11 Jul 2019 21:16:20 +0900
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>
Subject: Re: [PATCH] IIO: stm32: Remove quadrature related functions from
 trigger driver
Message-ID: <20190711121620.GA11661@icarus>
References: <20190507091224.17781-1-benjamin.gaignard@st.com>
 <20190711115059.GA7778@icarus>
 <CA+M3ks42Whd=QVQ-4==n5bRJKEwYpQtRHs=gBGEZ_Hr=_8YU1g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+M3ks42Whd=QVQ-4==n5bRJKEwYpQtRHs=gBGEZ_Hr=_8YU1g@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_051639_866535_28E6F641 
X-CRM114-Status: GOOD (  14.54  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vilhelm.gray[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Lars-Peter Clausen <lars@metafoo.de>,
 Benjamin Gaignard <benjamin.gaignard@st.com>, linux-iio@vger.kernel.org,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Hartmut Knaack <knaack.h@gmx.de>, Fabrice Gasnier <fabrice.gasnier@st.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Alexandre Torgue <alexandre.torgue@st.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBKdWwgMTEsIDIwMTkgYXQgMDI6MTI6MjdQTSArMDIwMCwgQmVuamFtaW4gR2FpZ25h
cmQgd3JvdGU6Cj4gTGUgamV1LiAxMSBqdWlsLiAyMDE5IMOgIDEzOjUxLCBXaWxsaWFtIEJyZWF0
aGl0dCBHcmF5Cj4gPHZpbGhlbG0uZ3JheUBnbWFpbC5jb20+IGEgw6ljcml0IDoKPiA+Cj4gPiBP
biBUdWUsIE1heSAwNywgMjAxOSBhdCAxMToxMjoyNEFNICswMjAwLCBCZW5qYW1pbiBHYWlnbmFy
ZCB3cm90ZToKPiA+ID4gUXVhZHJhdHVyZSBmZWF0dXJlIGlzIG5vdyBob3N0ZWQgb24gaXQgb3du
IGZyYW1ld29yay4KPiA+ID4gUmVtb3ZlIHF1YWRyYXR1cmUgcmVsYXRlZCBjb2RlIGZyb20gc3Rt
MzItdHJpZ2dlciBkcml2ZXIgdG8gYXZvaWQKPiA+ID4gY29kZSBkdXBsaWNhdGlvbiBhbmQgc2lt
cGxpZnkgdGhlIEFCSS4KPiA+ID4KPiA+ID4gU2lnbmVkLW9mZi1ieTogQmVuamFtaW4gR2FpZ25h
cmQgPGJlbmphbWluLmdhaWduYXJkQHN0LmNvbT4KPiA+Cj4gPiBXaGF0IGlzIHRoZSBzdGF0dXMg
b2YgdGhpcyBwYXRjaD8gQXJlIHRoZXJlIGFueSBvYmplY3Rpb25zIGN1cnJlbnRseSBmb3IKPiA+
IGl0cyBpbmNsdXNpb24/Cj4gCj4gWW91IHdlcmUgdGhlIG9ubHkgb25lIGFza2luZyBmb3IgbW9y
ZSBkZXRhaWxzIGFib3V0IGl0IDotKQo+IElmIHlvdSBhZ3JlZSBJIHRoaW5rIHRoYXQgSm9uYXRo
YW4gY2FuIG1lcmdlIGl0Lgo+IAo+IEJlbmphbWluCj4gPgo+ID4gV2lsbGlhbSBCcmVhdGhpdHQg
R3JheQo+ID4KPiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCj4gPiBsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAo+ID4gbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwKClllcywgSm9uYXRoYW4gcGxlYXNlIG1lcmdl
IHRoaXMgaWYgeW91IGhhdmUgbm8gb2JqZWN0aW9ucywgSSBoYWRuJ3QKcmVhbGl6ZWQgSSB3YXMg
ZGVsYXlpbmcgaXQuCgpUaGFuayB5b3UsCgpXaWxsaWFtIEJyZWF0aGl0dCBHcmF5CgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
