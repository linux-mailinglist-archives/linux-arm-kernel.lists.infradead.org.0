Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93E343CA3A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 13:43:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oU/6rG066euV67pEwhQAxW+v8UMNyphDKAd8HSW6nPQ=; b=k4sW1a4erz2N39
	reLAW3nPkisLPc3fpdD03aJlx1gv7kE9/4IXI2VAWkplF/DaOGmG5nU2yLF8jGTQivQZls9irG5uG
	6uPD9Na263Pjt9fwWRqLq5ldjxUPeI2lcSzrgqyj5XXSZmDy1K4QU6CelhpoESZcXEMLf9W353RNY
	PORj8wS0WwMgQfsMjBSdGJCs4Vxot31/BBvbmIRyZawvHEW0wzeFxKOVJSI+OF5jATTdSo/EHPhzm
	6R6NCjtBwf45rzaUcckDGQ97SK4SWGm2V659POEzr665q89XVQVtopz3hIca6R1a0uw3okxkGRpKq
	P9fuealO1MD26wV4u8FA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hafB9-00073w-Lx; Tue, 11 Jun 2019 11:43:03 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hafAu-000731-OV
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 11:42:50 +0000
Received: by mail-qt1-x842.google.com with SMTP id d23so14074751qto.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 04:42:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=vjOFdAaYDNmN3A5HT5pM3yHGhYnwl0N9Oc3jefh1rW8=;
 b=j0RVeHL8Khr0VlnuhcwdE+nOiCX1mQmd+StNdZEDBY8zoM8siTM15NLmIqnGoq0BS9
 o57ljDhdsozst5Nsd2nvSvCCF+Lrmqe2Ma7mb7oFFjhr3YR/IVqIHkk19zhD8iFSXM5U
 D1U4gng45f/WObLDk3TqJWH0lh77UMzGs0GRkDHNoJoYYONO8a726f/X8xB8tatszpu8
 O7Q0FPE1uMJl39ybF22UNV1YvvuXKBXYXjSwdCk2Z6jqqy3McW1C8pcXi0KGWJ9Jo2HR
 kBVIesagSyMrHP8WEO/Zn9/YlrGVbK3NlZGaWjnPwvnIw1MnVOpUDhx4G6gvNCk7gvQ3
 qq7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=vjOFdAaYDNmN3A5HT5pM3yHGhYnwl0N9Oc3jefh1rW8=;
 b=lKLXnZ4fGSyBZ485sA3mRnUlGH8wXgxbVc5WLjX33iPdPAjYGc5C+6hgY4Uf0Kocmt
 NxTZxudnqTuPbrYh3FvhdrvoHXWBdb//Wf//h07x5/dUVLZCwXRHpXhSd2HeGFI7ESIr
 4MYypmzE4lvTMt9klssgqBTDMjIW4/Xp+m1krtEqVnOqfuaqOSQf3CISS++yibbtSzno
 rml1jCfIyB5ZTeNVZksnNtAqCZ9C9po8BF0zk/54bttDiEYHPJVJJQ/FPAY3RrbDvgXe
 JMZK0yz7F3IEiDImYD/LC/0zbI4hUU0hgrdBE3f5+LNZhfWFizQh0L+lDsRQONV8bBhM
 xT+A==
X-Gm-Message-State: APjAAAVEVAugAK+yyLlLVzmZHDFjEa6XhsSUmX0csCL3/a14feGtstLh
 I5GAQvMJzSN+6f0pSzSgA6EeYW17OUfhvHi+F0z06g==
X-Google-Smtp-Source: APXvYqyePZUiQGFy/pxLEHepqbJXYI67xMab3BFWslPBOL+viW6ZLRa45QU0Y62Q1TG83XbVR5WcaY3e7jRmywXQYW4=
X-Received: by 2002:ac8:395b:: with SMTP id t27mr65198889qtb.115.1560253366125; 
 Tue, 11 Jun 2019 04:42:46 -0700 (PDT)
MIME-Version: 1.0
References: <20190214083145.15148-1-benjamin.gaignard@linaro.org>
 <e25b2626-231b-28d7-93b0-004a21a3685e@st.com>
 <CAOMZO5A6A2sYzfPgjsqQxWcc4Z0YW9-sENW21KumO_XkN3WBYQ@mail.gmail.com>
 <CA+M3ks7LPEpEfOEqiOZ4q2-We-8BjK0FZfeKts4hBzL7GRRHSw@mail.gmail.com>
In-Reply-To: <CA+M3ks7LPEpEfOEqiOZ4q2-We-8BjK0FZfeKts4hBzL7GRRHSw@mail.gmail.com>
From: Benjamin Gaignard <benjamin.gaignard@linaro.org>
Date: Tue, 11 Jun 2019 13:42:34 +0200
Message-ID: <CA+M3ks5UE8VSa1iHVHWw8NfQWU-v_MRYffVPBMLhy53PD9SJxA@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] ARM errata 814220
To: Fabio Estevam <festevam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_044248_803468_9B902541 
X-CRM114-Status: GOOD (  13.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>, Arnd Bergmann <arnd@arndb.de>,
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 linux-kernel <linux-kernel@vger.kernel.org>, Hui Liu <jason.hui.liu@nxp.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TGUgbWVyLiAyNCBhdnIuIDIwMTkgw6AgMDk6MjUsIEJlbmphbWluIEdhaWduYXJkCjxiZW5qYW1p
bi5nYWlnbmFyZEBsaW5hcm8ub3JnPiBhIMOpY3JpdCA6Cj4KPiBMZSBtYXIuIDIzIGF2ci4gMjAx
OSDDoCAxOTo0NiwgRmFiaW8gRXN0ZXZhbSA8ZmVzdGV2YW1AZ21haWwuY29tPiBhIMOpY3JpdCA6
Cj4gPgo+ID4gT24gV2VkLCBGZWIgMjcsIDIwMTkgYXQgMToyMSBQTSBBbGV4YW5kcmUgVG9yZ3Vl
Cj4gPiA8YWxleGFuZHJlLnRvcmd1ZUBzdC5jb20+IHdyb3RlOgo+ID4gPgo+ID4gPgo+ID4gPiBP
biAyLzE0LzE5IDk6MzEgQU0sIEJlbmphbWluIEdhaWduYXJkIHdyb3RlOgo+ID4gPiA+IEltcGxl
bWVudCBBUk0gZXJyYXRhIDgxNDIyMCBmb3IgQ29ydGV4IEE3Lgo+ID4gPiA+Cj4gPiA+ID4gVGhp
cyBwYXRjaCBoYXMgYmVlbiB3cm90ZW4gYnkgSmFzb24gTGl1IHllYXJzIGFnbyBidXQgbmV2ZXIg
c2VuZCB1cHN0cmVhbS4KPiA+ID4gPiBJIGhhdmUgdHJpZWQgdG8gY29udGFjdCB0aGUgYXV0aG9y
IG9uIG11bHRpcGxlIGVtYWlsIGFkZHJlc3NlcyBidXQgSSBoYXZlbid0Cj4gPiA+ID4gZm91bmQg
YW55IHZhbGlkIG9uZS4uLgo+ID4gPiA+IEkgaGF2ZSBrZWVwIEphc29uJ3Mgc2lnbi1vZmYgYW5k
IGp1c3QgcmViYXNlIHRoZSBwYXRjaCBvbiB0byB2NS1yYzYuCj4gPgo+ID4gQWRkaW5nIEphc29u
J3MgTlhQIGUtbWFpbCBhZGRyZXNzLgo+IFRoYW5rcyAhCj4KPiBSdXNzZWxsLCBjYW4gQWxleGFu
ZHJlIHB1c2ggdGhpcyBzZXJpZXMgaW4gc3RtMzIgdHJlZSBvciB5b3UgcHJlZmVyIHRvCj4gbWVy
Z2UgaXQgeW91cnNlbGYgPwo+CgpIZWxsbyBSdXNzZWxsLAoKSSBoYXZlIHB1c2ggdGhpcyBzZXJp
ZXMgaW4geW91ciBwYXRjaCBzeXN0ZW0gd2Vla3MgYWdvLCBidXQgbm90aGluZyBoYXBwZW5zLgpE
byBJIG1pc3Mgc29tZXRoaW5nIGluIHlvdXIgcHJvY2VzcyA/CgpSZWdhcmRzLApCZW5qYW1pbgoK
PiBSZWdhcmRzLAo+IEJlbmphbWluCj4gPgo+ID4gVGhhbmtzCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
