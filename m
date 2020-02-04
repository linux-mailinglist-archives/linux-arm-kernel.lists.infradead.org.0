Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B0B6151922
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Feb 2020 11:59:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wDU21J/0F9YIjfiBQm2d6BhWFyblfDoAH5kWyWk+NK0=; b=edGNxXOXtR7gE/
	nwjcH2UklzRr42qchANtnnzfh5apufyfxk1icVuNM+9xP2MzKMYx1gmfoOyPYChFkqxmdR5lo82CF
	mj3D2z3SQsj9sbnt4GOImOwc3yjLQOVO3MOEI0eaTr8wj+nC2LVsGU1HRg5yRJ+pPzm4BUKOyDcFy
	5qRdIEXWjp2V5EvdUfwvHLiirIqonlL1K0ofWFA3Dn+p9OC4n3qEFZbcDglvQaiLL2DVkIFFZgzVa
	CyAGG+MIb01hWcc/LGPp7nmkP2+6EuaZduPRB7sj+mPB1VojU4nwrE2BTIB6o+pWfbCibw7iKtleh
	1/Ca0/JXGoJZ9bJtpxng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyvvo-0001Wq-Tg; Tue, 04 Feb 2020 10:59:48 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyvvh-0001Vz-Ee
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Feb 2020 10:59:42 +0000
Received: by mail-qk1-x741.google.com with SMTP id b7so2216912qkl.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Feb 2020 02:59:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=OkYuSAHSvR9IiWlcEsrQapzeBiIfaoP2obtZIjgXQhs=;
 b=rITuRlnU5/24sQNwIAAIdWCPBPPBD353FYTZvrULxlwi2ajLaJpHIUmUjtLGA4NvOs
 Vw0gnzxypm5dmKpNeYwo9Jr6qEc/iPregoYplOyR8itbWunGqVIzzFqeAClewPy/eJcI
 pOFpyvvCPqg2QPnaMa1baSZ4Epw9tMeEFv4pHP2tb1behBX1096LA6gMrDoL5XeOGa4A
 wK7wwwp0b3LKC8aub/4AljYlboky34EsIRUjoNs1FF+E09Wfqb+ajh8k8vSd8E1UpTt0
 AGTBrMXe9IWJxZWinTXd5Lk72BZl5qU0BqZiYnxcapLmPdJwY5/EvEVEnhuEaZDyxYOY
 ijuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=OkYuSAHSvR9IiWlcEsrQapzeBiIfaoP2obtZIjgXQhs=;
 b=ZD+FRJjSxTvXhJVTRncb0dwdEMZA7pueMqUqo7hm+BZNoMzHyUN4CikAqinP9H4zm2
 yzB/3hXkTI0p13qth9FQdDSjm9zpQgzLsd98w+LTKvX4ZqfuH3j8heWnfq4xna37Reyx
 zuZMc8O8w6JdRj2X9MPGjhvDFONq/OlJLXgcsWrx803CNFea07vf+E4jnb2+MscWSN7Y
 rXp12wEgc7XmTlRQa1+6AJ1vDr5UD5gbUxJD4VHTeCN8Xw717c2gL7HaoDrRf6GkF+Y+
 iagoebXlQ8DXJ/mCDPWQ5aIH/q7+d2ms+xChWwuTR+lQAnkKFi+J9nY0AX2yCUPT6SdE
 BffA==
X-Gm-Message-State: APjAAAXXFOAMC726shkYapjv8XEaaTOOYgj2GtkwzP3eoRh0W3JsjZMP
 Lnv01Jxc+gl9w3X/Ct2Lic9LxFKzK1oB4Xbk9r45Tg==
X-Google-Smtp-Source: APXvYqwW+VXZSsGTnbaiHcIw6633UG2ZmqWmA1RIngmVgnjon5IKG3UFUyO2ideE4wKuZmUV4TLy1aHR+b//QPX9+Qw=
X-Received: by 2002:a37:9c07:: with SMTP id f7mr28696197qke.103.1580813980425; 
 Tue, 04 Feb 2020 02:59:40 -0800 (PST)
MIME-Version: 1.0
References: <1579602245-7577-1-git-send-email-yannick.fertre@st.com>
 <1fd9adf5-873b-2b9d-fe22-278f2ea64746@st.com>
In-Reply-To: <1fd9adf5-873b-2b9d-fe22-278f2ea64746@st.com>
From: Benjamin Gaignard <benjamin.gaignard@linaro.org>
Date: Tue, 4 Feb 2020 11:59:29 +0100
Message-ID: <CA+M3ks45=r+gQ9bHaiaNObVFBA07XyDm=gPrwSq7o9EHdhVz5g@mail.gmail.com>
Subject: Re: [PATCH] drm/stm: dsi: stm mipi dsi doesn't print error on probe
 deferral
To: Philippe CORNU <philippe.cornu@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_025941_498860_5D08A25E 
X-CRM114-Status: GOOD (  16.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Benjamin GAIGNARD <benjamin.gaignard@st.com>,
 David Airlie <airlied@linux.ie>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Yannick FERTRE <yannick.fertre@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Alexandre TORGUE <alexandre.torgue@st.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TGUgamV1LiAyMyBqYW52LiAyMDIwIMOgIDEwOjU0LCBQaGlsaXBwZSBDT1JOVSA8cGhpbGlwcGUu
Y29ybnVAc3QuY29tPiBhIMOpY3JpdCA6Cj4KPiBEZWFycyBZYW5uaWNrICYgRXRpZW5uZSwKPiBU
aGFuayB5b3UgZm9yIHlvdXIgcGF0Y2gsCj4KPiBSZXZpZXdlZC1ieTogUGhpbGlwcGUgQ29ybnUg
PHBoaWxpcHBlLmNvcm51QHN0LmNvbT4KPgo+IFBoaWxpcHBlIDotKQo+Cj4gT24gMS8yMS8yMCAx
MToyNCBBTSwgWWFubmljayBGZXJ0cmUgd3JvdGU6Cj4gPiBGcm9tOiBFdGllbm5lIENhcnJpZXJl
IDxldGllbm5lLmNhcnJpZXJlQHN0LmNvbT4KPiA+Cj4gPiBDaGFuZ2UgRFNJIGRyaXZlciB0byBu
b3QgcHJpbnQgYW4gZXJyb3IgdHJhY2Ugd2hlbiBwcm9iZQo+ID4gaXMgZGVmZXJyZWQgZm9yIGEg
Y2xvY2sgcmVzb3VyY2UuCgpBcHBsaWVkIG9uIGRybS1taXNjLW5leHQ/ClRoYW5rcywKQmVuamFt
aW4KCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogRXRpZW5uZSBDYXJyaWVyZSA8ZXRpZW5uZS5jYXJy
aWVyZUBzdC5jb20+Cj4gPiAtLS0KPiA+ICAgZHJpdmVycy9ncHUvZHJtL3N0bS9kd19taXBpX2Rz
aS1zdG0uYyB8IDQgKysrLQo+ID4gICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAx
IGRlbGV0aW9uKC0pCj4gPgo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9zdG0vZHdf
bWlwaV9kc2ktc3RtLmMgYi9kcml2ZXJzL2dwdS9kcm0vc3RtL2R3X21pcGlfZHNpLXN0bS5jCj4g
PiBpbmRleCA0YjE2NTYzLi4yZTFmMjY2IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L3N0bS9kd19taXBpX2RzaS1zdG0uYwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3N0bS9kd19t
aXBpX2RzaS1zdG0uYwo+ID4gQEAgLTM3Nyw3ICszNzcsOSBAQCBzdGF0aWMgaW50IGR3X21pcGlf
ZHNpX3N0bV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ID4gICAgICAgZHNp
LT5wbGxyZWZfY2xrID0gZGV2bV9jbGtfZ2V0KGRldiwgInJlZiIpOwo+ID4gICAgICAgaWYgKElT
X0VSUihkc2ktPnBsbHJlZl9jbGspKSB7Cj4gPiAgICAgICAgICAgICAgIHJldCA9IFBUUl9FUlIo
ZHNpLT5wbGxyZWZfY2xrKTsKPiA+IC0gICAgICAgICAgICAgRFJNX0VSUk9SKCJVbmFibGUgdG8g
Z2V0IHBsbCByZWZlcmVuY2UgY2xvY2s6ICVkXG4iLCByZXQpOwo+ID4gKyAgICAgICAgICAgICBp
ZiAocmV0ICE9IC1FUFJPQkVfREVGRVIpCj4gPiArICAgICAgICAgICAgICAgICAgICAgRFJNX0VS
Uk9SKCJVbmFibGUgdG8gZ2V0IHBsbCByZWZlcmVuY2UgY2xvY2s6ICVkXG4iLAo+ID4gKyAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICByZXQpOwo+ID4gICAgICAgICAgICAgICBnb3RvIGVy
cl9jbGtfZ2V0Owo+ID4gICAgICAgfQo+ID4KPiA+Cj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPiBkcmktZGV2ZWwgbWFpbGluZyBsaXN0Cj4gZHJpLWRl
dmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
