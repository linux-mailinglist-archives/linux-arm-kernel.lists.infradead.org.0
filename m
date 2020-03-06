Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED27F17C1EB
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 16:35:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ue06yPdyjxyO3S1hyYsLC+Eqf+6th7DbwojBs/sABGk=; b=I+TiYxyuGqtLbF
	hWpMBn00HqkqO0y/RpUY5Aowtr6lGQC5LCoH6VdJ1zlMPUn20W4+nA2Jd+XytT6zTMHk+Yso7q/07
	5QVJFEoY8KicpBVO0wF9pze4X9OUAgulNkR+xed2RfIzHwav/GBa/iwDXIFP0sy242HSGvTK91cGV
	MPQ6vvusU5Al3c8CaJEgy61FacbFTyk0YyrJ1IP8CCQusFhYSo/4MOaX8x4hzgbeD5eil7WfJPA/v
	HOQRVutKwJBrq1IBxaoEfOioOQZd8nEP+Q7r99xO1sz7CKjhKgmtOAgOfvXLTKqeC0R/3J5Iu/Bp2
	F8TFaxywgbqIPcjTgg+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAF0w-0007xU-Me; Fri, 06 Mar 2020 15:35:50 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAF0q-0007x2-Jy
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 15:35:46 +0000
Received: by mail-qk1-x743.google.com with SMTP id f3so2691180qkh.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Mar 2020 07:35:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=vZAt7EuTcd6oJ9LombqPUkA52Qv+2N3r0RFkmD14qVs=;
 b=rnRXuk5el8Wxi8pXes3tqCH5/QpR/Rfyx0OlYlxa3HVXHOg180fONcRy7EjtlMPSc6
 Th959oJSCvaSPsPNe8hHiHe5eHfue1y+QAR0r0F++RYentyWwx0/REjwEPgM5wwWoPJZ
 lE4hIaC0vKXC8DWEToNeW+yiqPE87K9SF7VBLjxK/1kifBC6Z7TfbtEMkjCGVAkAQYGW
 AGMT4o0Udw8fAL0Mkb4Hy8nMyYIjLQZn112bWXk6zvO6Xwk3SnF30Wj0CSX+Fi9wj1k/
 5g7ggjP1tpiIBXhQlyDvb9B3+irKwyaBTa99/13XO/Bv2tbU/NSaiKeQPVavkVBG1UV/
 mlAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=vZAt7EuTcd6oJ9LombqPUkA52Qv+2N3r0RFkmD14qVs=;
 b=JoZAajwiDg2moGV6jRKCFIFmEn8LgrsqWMeXwKMF3aZiE1iuKA1ABl3P21GPGfO9ZL
 pX9RsfE9wQTuhw4IXYrEfD/bIzjfVKraHWUzkOJf4M/XcvzRElJJ/Vep3cA+qi3bf4Fu
 Sz7pgY+IMXCHWfrzvpu830kLwn9pz16avPdKXgo74Sg/sD1r6EzZLtbmJ1JD1U7d7Q+T
 SVmjprJEONJRzzctwjmo8BkASpP79//2PIn7azafDD66ooVruCXIi4R/PgfeDyOl8aO8
 aort+eXKo0h+wocax/Ad5U84vQRPCzYx+5GgSZJa3EUNkFNm2GyjR0s8MiQ0VnQt6dFj
 Du0g==
X-Gm-Message-State: ANhLgQ1tIXignznF/1dFVxheBjPRPV6OBz7ix/ZzIhLfTIDXPnxv9kVd
 QpAfOXVmGMN7QgJez72FRd6NerVe77Bhz1tlQK3ZuQ==
X-Google-Smtp-Source: ADFU+vsRwZwD/lvE0ZlhRuoPrPbsAUoOPliB8JM0vcI6fpS+pB2INIGaA49xhcDlqAc7wCKniJIHrrVENoCFi2UYcbg=
X-Received: by 2002:a05:620a:16b8:: with SMTP id
 s24mr3570871qkj.104.1583508942963; 
 Fri, 06 Mar 2020 07:35:42 -0800 (PST)
MIME-Version: 1.0
References: <20200304122312.GE25004@bogus>
 <CAPDyKFpcN-p6sKqB0ujHAY29qPSg7qpSjYGymPaJ4W8jgCKGcg@mail.gmail.com>
 <20200305162321.GB53631@bogus>
 <CAPDyKFogjPG+mRsfPaxN7RjB7TQL9=qHNzA=K_t0F6M6Q9-TuA@mail.gmail.com>
 <20200306100431.GA16541@bogus>
 <CA+M3ks764moVU2h9iZJuN6B-e4wBUMymBfPnob_zraf50xqezA@mail.gmail.com>
 <20200306120646.GB44221@bogus>
 <CA+M3ks7+P=CjvUE28boANhrR6bhzLzyjBLovzWL_LjwL3UqmzQ@mail.gmail.com>
 <20200306134119.GB47929@bogus>
 <CA+M3ks5XBFcJqQozA=k6nU2XawRYT_qKnLW9t_GdkoRGNEd1yA@mail.gmail.com>
 <20200306144951.GA11624@bogus>
In-Reply-To: <20200306144951.GA11624@bogus>
From: Benjamin Gaignard <benjamin.gaignard@linaro.org>
Date: Fri, 6 Mar 2020 16:35:32 +0100
Message-ID: <CA+M3ks6=gRj-5Qfe93+2BbECY=cGuj189MQu3yDnib-SbSM7Og@mail.gmail.com>
Subject: Re: [PATCH v2 4/4] cpuidle: psci: Allow WFI to be the only state for
 the hierarchical topology
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_073544_689113_ECB12401 
X-CRM114-Status: GOOD (  22.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Benjamin Gaignard <benjamin.gaignard@st.com>,
 Linux PM <linux-pm@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Lina Iyer <ilina@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TGUgdmVuLiA2IG1hcnMgMjAyMCDDoCAxNTo1MCwgU3VkZWVwIEhvbGxhIDxzdWRlZXAuaG9sbGFA
YXJtLmNvbT4gYSDDqWNyaXQgOgo+Cj4gT24gRnJpLCBNYXIgMDYsIDIwMjAgYXQgMDM6NDQ6MzNQ
TSArMDEwMCwgQmVuamFtaW4gR2FpZ25hcmQgd3JvdGU6Cj4gPiBMZSB2ZW4uIDYgbWFycyAyMDIw
IMOgIDE1OjIzLCBTdWRlZXAgSG9sbGEgPHN1ZGVlcC5ob2xsYUBhcm0uY29tPiBhIMOpY3JpdCA6
Cj4gPiA+Cj4gPiA+IE9uIEZyaSwgTWFyIDA2LCAyMDIwIGF0IDAxOjMyOjU5UE0gKzAxMDAsIEJl
bmphbWluIEdhaWduYXJkIHdyb3RlOgo+ID4gPiA+IExlIHZlbi4gNiBtYXJzIDIwMjAgw6AgMTM6
MDYsIFN1ZGVlcCBIb2xsYSA8c3VkZWVwLmhvbGxhQGFybS5jb20+IGEgw6ljcml0IDoKPiA+ID4g
PiA+Cj4gPiA+Cj4gPiA+IFsuLi5dCj4gPiA+Cj4gPiA+ID4gPiBTdXJlLCBwbGVhc2UgY3JlYXRl
IGEgZGVlcGVyIENQVSBzdGF0ZSB0aGFuIFdGSSBhbmQgZW50ZXIgc28gdGhhdCB0aGUgQ1BVCj4g
PiA+ID4gPiBzdGF0ZSBpcyBzYXZlZCBhbmQgcmVzdG9yZWQgY29ycmVjdGx5LiBXaGF0IGlzIHRo
ZSBwcm9ibGVtIGRvaW5nIHRoYXQgPwo+ID4gPiA+Cj4gPiA+ID4gVGhpcyBzdGF0ZSBzdG9wIHRo
ZSBjbG9ja3MgZm9yIGFsbCB0aGUgaGFyZHdhcmUgYmxvY2tzIGFuZCBub3Qgb25seSB0aGUgQ1BV
cwo+ID4gPiA+IHNvIHdlIGNhbid0IGdvIG9uIGl0IHdoaWxlIGRldmljZXMgYXJlbid0IHN1c3Bl
bmRlZC4KPiA+ID4gPiBJIG1heSBoYXZlIG1pc3NlZCBzb21ldGhpbmcgYnV0IEkgZG9uJ3QgYmVs
aWV2ZSB0aGF0IEkgY291bGQgYWRkIHRoaXMga2luZCBvZgo+ID4gPiA+IGNvbmRpdGlvbnMgaW4g
YSBjcHUgaWRsZSBzdGF0ZSwgcmlnaHQgPwo+ID4gPiA+IEluIHRoaXMgc3RhdGUgSSBuZWVkIHRv
IGJlIGFibGUgdG8gZW5hYmxlIHRoZSB3YWtlIHVwIHNvdXJjZXMgYmVjYXVzZQo+ID4gPiA+IGl0
IGlzIHRoZSBvbmx5Cj4gPiA+ID4gZm9yIGhhcmR3YXJlIGJsb2NrIHVzZWQgYXMgYnJvYWRjYXN0
IHRpbWVyIHRvIHdha2UgdXAgdGhlIHN5c3RlbS4KPiA+ID4gPgo+ID4gPgo+ID4gPiBXZSBoYXZl
IGRpc2N1c3NlZCB0aGlzIGluIHBhc3QgaW4gdGhlIHRocmVhZCBJIG1lbnRpb25lZCBhbmQgbWF5
IGJlCj4gPiA+IG90aGVycyB0b28uIEl0IHNvdW5kcyBsaWtlIGEgYnJva2VuIGhhcmR3YXJlLCBz
b3JyeSBpZiBJIGFtIHdyb25nLgo+ID4gPiBCdXQgdGhpcyAkc3ViamVjdCBwYXRjaCBpcyBhIGhh
Y2sgdG8gc29sdmUgdGhhdCBhbmQgSSBhbSBOQUNLLWluZyB0aGlzCj4gPiA+IG5vdy4gUGxlYXNl
IGZpeCBpdCBhZGRpbmcgYW5vdGhlciBDUFUgbGV2ZWwgaWRsZSBzdGF0ZSwgd2UgYXJlIG5vdAo+
ID4gPiBzdXBwb3J0aW5nIHdpdGhvdXQgdGhhdCBhbmQgdGhlcmUgaXMgYWJzb2x1dGVseSBubyBu
ZWVkIHRvLgo+ID4KPiA+IEEgQ1BVIGlkbGUgc3RhdGUgb25seSB0YWtlIGNhcmUgb2YgQ1BVIGFj
dGl2aXRpZXMsIHJpZ2h0ID8gYnV0IGJlZm9yZSBnb2luZyBpbgo+ID4gdGhlIHRhcmdldGluZyBz
dGF0ZSBJIG5lZWQgdG8gYmUgc3VyZSB0aGF0IHRoZSBvdGhlciBoYXJkd2FyZSBibG9ja3MKPiA+
IGFyZSBzdXNwZW5kZWQuCj4gPiBJcyBpdCBwb3NzaWJsZSB0byBkZXNjcmliZSB0aGF0IGluIGFu
IGlkbGUgc3RhdGUgPwo+ID4gV2hhdCBzb3VuZCBicm9rZW4gPyBpcyBpdCBiZWNhdXNlIHdlIG5l
ZWQgdG8gc2V0dXAgdGhlIHdha2UgdXAgc291cmNlcyA/Cj4gPgo+Cj4gWW91IHNhaWQ6ICIgSW4g
RFQgSSBoYXZlIG9uZSBzeXN0ZW0gcG93ZXIgZG9tYWluIHdoZXJlIHRoZSBoYXJkd2FyZSBibG9j
a3MKPiAoaTJjLHVhcnQ7IHNwaSwgZXRjLi4pIGFyZSBhdHRhY2hlZCArIGEgcG93ZXIgcGVyIENQ
VSIuIE5vdyBzaW5jZSB0aGUgQ1BVCj4gc3RheXMgaW4gV0ZJIGFsd2F5cyBpbiB0aGlzIHBsYXRm
b3JtLCBpdCBtZWFucyBpdCBpcyBhbHdheXMgT04gYW5kIHlvdQo+IGNhbid0IHZvdGUgdG8gcG93
ZXIgZG93biB0aGUgbWFnaWMgInN5c3RlbSBwb3dlciBkb21haW4iLgoKQ1BVIHBvd2VyIGRvbWFp
bnMgYXJlIHN1YmRvbWFpbnMgb2YgdGhlIHN5c3RlbSBwb3dlciBkb21haW4gc28gdGhleSBjYW4g
dm90ZQpmb3IgdGhlIHRhcmdldGluZyBwb3dlciBkb21haW4uCgo+Cj4gLS0KPiBSZWdhcmRzLAo+
IFN1ZGVlcAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
