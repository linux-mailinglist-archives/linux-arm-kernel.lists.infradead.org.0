Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80F871F7730
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 13:17:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wPOnBcSalXEPNo6gotKT6gVugkw2kt9IJAw1rycWS8g=; b=rfBhYV9eQ5uBye
	gqaKWnIcblBLvF52kB5ExWydR2JFYqVsYFwSrfGEcIUc9ciUfhwF/iVQAAEWg/CO3qYy2jC1DbX76
	E2Y9H7M3h4Z0R+23/wIPbGCul4VSaWpvMsfRoZAOZ9Gtk8G5UDoU0h+FAl0MqDQEbhQ6Zl3k6CkBH
	SzW9grKhPSRJj7YK2obCyuJv4QFA4htqBqNTPUpo579T6bYJaFEnASc7V84uiG2kdLotwH31sZdiH
	2S6ER13hNLygRUatiiTwb5KNEro/InsbBcIh5nhsA7MKi9C6u49m2eSGEqPuXKcr4r6W3qXHbqnYX
	f+tEmqRpxn5ysG43gBaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjhgj-0007LT-OO; Fri, 12 Jun 2020 11:17:33 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjhgY-0007Jl-9a
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 11:17:24 +0000
Received: by mail-wm1-x341.google.com with SMTP id g10so7753563wmh.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jun 2020 04:17:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=lFJvzabjoEZ+HtsOECcEtmqFE9pBFs7uCPFeRIh5sLc=;
 b=PnDUJ1l1npEElayWuGR6BbsRPZMBMfoz+SUfyLlD7JrXmEYvSkr27n9p5szcYOrl/9
 B0fJ+fBTrwV3DAEyK0YGqEydXAUQk7egq6QTT7afNlyy1vEseRA7M+rPi6T6BJ+NC3Or
 FVfZA/9Ieb3tOmQYm39PCrTAs0h5Um/vx1RiOait6i2WXtJMxl2QnUx14LFf1FxpeWFN
 BOtFzC6Hdze7c3jUJ11SauoLPwcSeZbwDutqusueHnIm4NhiuumiBsKw5vNMPg6wFcFS
 0ZJrUfgGXyBG+qPOsRZaB/3RHYZHQ59NqgXSZcau7sGGO2DNWpBI1QwEZ5zNrdibuNFu
 8puQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=lFJvzabjoEZ+HtsOECcEtmqFE9pBFs7uCPFeRIh5sLc=;
 b=jiuw1WkrXCUZz59bpxVimFEGVx4+gvfNxayOzsBQS9EZWGL2ehEbGiHd3uh/dJ12hE
 oyerBQFiX8LuK+1wkEvQRzfRhKtQztepNrwSeIlbjbaGJHxhjnOo1A9lgdLb2wTpiSWj
 gx53YSysOPdhFeGAnuqQccR7JQTzSwltwSXshNdo1lxQ2LmC0Tv2nczyurausMSGffEL
 gTNkj++xROk7JWE8BPDnpWr8TyM58cVKyg2mRJxz+raECPy9Qj/4WHt4goJm2igi3I9Z
 7y6AckoFjNXcbcxT3tCifK4JLrnKU+MtJLDJm3sdDh78/sSsf4Hfs6G28xruHVK4ILir
 kzGQ==
X-Gm-Message-State: AOAM5312FnZuKEMtkF217wx7xxa5r/LtdOyEeEafQjxre41y36yz6mNP
 BthiOUGcO5Adhm/MdYOSRV8P6A==
X-Google-Smtp-Source: ABdhPJy/H/RDxG/sjS0gqbAVmPeBzeGEkD+BK9JeLjyyQfM2QDREy9dBILVxAKQRbzNWeKEttBazIw==
X-Received: by 2002:a05:600c:2945:: with SMTP id
 n5mr13825316wmd.189.1591960640116; 
 Fri, 12 Jun 2020 04:17:20 -0700 (PDT)
Received: from dell ([2.27.167.101])
 by smtp.gmail.com with ESMTPSA id p9sm8205945wma.48.2020.06.12.04.17.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Jun 2020 04:17:19 -0700 (PDT)
Date: Fri, 12 Jun 2020 12:17:17 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Gene Chen <gene.chen.richtek@gmail.com>
Subject: Re: [PATCH] mfd: mt6360: Fix register driver NULL pointer by add
 driver name
Message-ID: <20200612111717.GA2311694@dell>
References: <1591609125-3761-1-git-send-email-gene.chen.richtek@gmail.com>
 <20200608192829.GG4106@dell>
 <CAE+NS36mxw-FpQhJ4qV=_+r2CXVi_PaGaZo2m3jXAGFuOO252Q@mail.gmail.com>
 <20200609125305.GL4106@dell>
 <CAE+NS36b8fV2JnSEJpky+0ES3KTYmQzC0MRTfRUf8yRsJh_bpQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAE+NS36b8fV2JnSEJpky+0ES3KTYmQzC0MRTfRUf8yRsJh_bpQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_041722_573716_5F7A591A 
X-CRM114-Status: GOOD (  16.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Gene Chen <gene_chen@richtek.com>, linux-kernel@vger.kernel.org,
 cy_huang@richtek.com, linux-mediatek@lists.infradead.org,
 matthias.bgg@gmail.com, Wilma.Wu@mediatek.com,
 linux-arm-kernel@lists.infradead.org, shufan_lee@richtek.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCAxMiBKdW4gMjAyMCwgR2VuZSBDaGVuIHdyb3RlOgoKPiBMZWUgSm9uZXMgPGxlZS5q
b25lc0BsaW5hcm8ub3JnPiDmlrwgMjAyMOW5tDbmnIg55pelIOmAseS6jCDkuIvljYg4OjUz5a+r
6YGT77yaCj4gPgo+ID4gT24gVHVlLCAwOSBKdW4gMjAyMCwgR2VuZSBDaGVuIHdyb3RlOgo+ID4K
PiA+ID4gTGVlIEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4g5pa8IDIwMjDlubQ25pyIOeaX
pSDpgLHkuowg5LiK5Y2IMzoyOOWvq+mBk++8mgo+ID4gPiA+Cj4gPiA+ID4gT24gTW9uLCAwOCBK
dW4gMjAyMCwgR2VuZSBDaGVuIHdyb3RlOgo+ID4gPiA+Cj4gPiA+ID4gPiBGcm9tOiBHZW5lIENo
ZW4gPGdlbmVfY2hlbkByaWNodGVrLmNvbT4KPiA+ID4gPiA+Cj4gPiA+ID4gPiBhY2NpZGVudGFs
bHkgcmVtb3ZlIGRyaXZlciBuYW1lIHdoZW4KPiA+ID4gPiA+IHJlcGxhY2UgcHJvYmUgYnkgcHJv
YmVfbmV3IGluIGFkZCBtdDYzNjAgbWZkIGRyaXZlciBwYXRjaCB2NAo+ID4gPiA+ID4KPiA+ID4g
PiA+IFsgIDEyMS4yNDMwMTJdIEVBWDogYzJhOGJjNjQgRUJYOiAwMDAwMDAwMCBFQ1g6IDAwMDAw
MDAwIEVEWDogMDAwMDAwMDAKPiA+ID4gPiA+IFsgIDEyMS4yNDMwMTJdIEVTSTogYzJhOGJjNzkg
RURJOiAwMDAwMDAwMCBFQlA6IGU1NGJkZWE4IEVTUDogZTU0YmRlYTAKPiA+ID4gPiA+IFsgIDEy
MS4yNDMwMTJdIERTOiAwMDdiIEVTOiAwMDdiIEZTOiAwMDAwIEdTOiAwMDAwIFNTOiAwMDY4IEVG
TEFHUzogMDAwMTAyODYKPiA+ID4gPiA+IFsgIDEyMS4yNDMwMTJdIENSMDogODAwNTAwMzMgQ1Iy
OiAwMDAwMDAwMCBDUjM6IDAyZWMzMDAwIENSNDogMDAwMDA2YjAKPiA+ID4gPiA+IFsgIDEyMS4y
NDMwMTJdIENhbGwgVHJhY2U6Cj4gPiA+ID4gPiBbICAxMjEuMjQzMDEyXSAga3NldF9maW5kX29i
aisweDNkLzB4YzAKPiA+ID4gPiA+IFsgIDEyMS4yNDMwMTJdICBkcml2ZXJfZmluZCsweDE2LzB4
NDAKPiA+ID4gPiA+IFsgIDEyMS4yNDMwMTJdICBkcml2ZXJfcmVnaXN0ZXIrMHg0OS8weDEwMAo+
ID4gPiA+ID4gWyAgMTIxLjI0MzAxMl0gID8gaTJjX2Zvcl9lYWNoX2RldisweDM5LzB4NTAKPiA+
ID4gPiA+IFsgIDEyMS4yNDMwMTJdICA/IF9fcHJvY2Vzc19uZXdfYWRhcHRlcisweDIwLzB4MjAK
PiA+ID4gPiA+IFsgIDEyMS4yNDMwMTJdICA/IGNodF93Y19kcml2ZXJfaW5pdCsweDExLzB4MTEK
PiA+ID4gPiA+IFsgIDEyMS4yNDMwMTJdICBpMmNfcmVnaXN0ZXJfZHJpdmVyKzB4MzAvMHg4MAo+
ID4gPiA+ID4gWyAgMTIxLjI0MzAxMl0gID8gaW50ZWxfbHBzc19wY2lfZHJpdmVyX2luaXQrMHgx
Ni8weDE2Cj4gPiA+ID4gPiBbICAxMjEuMjQzMDEyXSAgbXQ2MzYwX3BtdV9kcml2ZXJfaW5pdCsw
eGYvMHgxMQo+ID4gPiA+ID4gWyAgMTIxLjI0MzAxMl0gIGRvX29uZV9pbml0Y2FsbCsweDMzLzB4
MWEwCj4gPiA+ID4gPiBbICAxMjEuMjQzMDEyXSAgPyBwYXJzZV9hcmdzKzB4MWViLzB4M2QwCj4g
PiA+ID4gPiBbICAxMjEuMjQzMDEyXSAgPyBfX21pZ2h0X3NsZWVwKzB4MzEvMHg5MAo+ID4gPiA+
ID4gWyAgMTIxLjI0MzAxMl0gID8ga2VybmVsX2luaXRfZnJlZWFibGUrMHgxMGEvMHgxN2YKPiA+
ID4gPiA+IFsgIDEyMS4yNDMwMTJdICBrZXJuZWxfaW5pdF9mcmVlYWJsZSsweDEyYy8weDE3Zgo+
ID4gPiA+ID4gWyAgMTIxLjI0MzAxMl0gID8gcmVzdF9pbml0KzB4MTEwLzB4MTEwCj4gPiA+ID4g
PiBbICAxMjEuMjQzMDEyXSAga2VybmVsX2luaXQrMHhiLzB4MTAwCj4gPiA+ID4gPiBbICAxMjEu
MjQzMDEyXSAgPyBzY2hlZHVsZV90YWlsX3dyYXBwZXIrMHg5LzB4Ywo+ID4gPiA+ID4gWyAgMTIx
LjI0MzAxMl0gIHJldF9mcm9tX2ZvcmsrMHgxOS8weDI0Cj4gPiA+ID4gPiBbICAxMjEuMjQzMDEy
XSBNb2R1bGVzIGxpbmtlZCBpbjoKPiA+ID4gPiA+IFsgIDEyMS4yNDMwMTJdIENSMjogMDAwMDAw
MDAwMDAwMDAwMAo+ID4gPiA+ID4gWyAgMTIxLjI0MzAxMl0gcmFuZG9tOiBnZXRfcmFuZG9tX2J5
dGVzIGNhbGxlZCBmcm9tIGluaXRfb29wc19pZCsweDNhLzB4NDAgd2l0aCBjcm5nX2luaXQ9MAo+
ID4gPiA+ID4gWyAgMTIxLjI0MzAxMl0gLS0tWyBlbmQgdHJhY2UgMzhhODAzNDAwZjFhMmJlZSBd
LS0tCj4gPiA+ID4gPiBbICAxMjEuMjQzMDEyXSBFSVA6IHN0cmNtcCsweDExLzB4MzAKPiA+ID4g
Pgo+ID4gPiA+IEhvdyBkaWQgdGhpcyBkcml2ZXIgZXZlciB3b3JrIGZvciB5b3U/Cj4gPiA+Cj4g
PiA+IGkgYXNrIG15IGNvd29ya2VyIGhlbHAgbWUgdmVyaWZ5Lgo+ID4gPiBpIHdpbGwgY2hlY2sg
dGhlIHBhdGNoIG15c2VsZiwgc2luY2VyZWx5IGFwb2xvZ2llcyBmb3IgdGhpcy4KPiA+Cj4gPiBX
aGF0IGRvZXMgdGhpcyBtZWFuPwo+ID4KPiA+IEFyZSB5b3Ugc2F5aW5nIHRoYXQgZm9yIGFsbCAx
MCB2ZXJzaW9ucyBvZiB0aGlzIHBhdGNoIHN1Ym1pc3Npb24sIGl0Cj4gPiBoYXMgbmV2ZXIgYmVl
biB0ZXN0ZWQ/ICBBbmQgZGVzcGl0ZSBiZWluZyBhdXRob3JlZCBieSB5b3UgYW5kCj4gPiBzdWJt
aXR0ZWQgYnkgeW91LCB5b3UgaGF2ZSBuZXZlciBhY3R1YWxseSBib290IHRlc3RlZCB0aGUgZHJp
dmVyCj4gPiB5b3Vyc2VsZj8gIFJlbHlpbmcgaW5zdGVhZCBvbiB5b3VyIGNvLXdvcmtlciB0byBj
b25kdWN0IHRoZSB0ZXN0aW5nLAo+ID4gd2hvIGZhaWxlZCB0byBkbyBzby4gIElzIHRoYXQgcmVh
bGx5IGNvcnJlY3Q/Cj4gPgo+IAo+IE9uIGNhcmVmdWxseSByZWFkaW5nIHRvIHRoZSBkb2N1bWVu
dCBob3cgdG8gdXBzdHJlYW0sIEkgZmluZCB0aGF0IEkKPiBoYWQgZnVsbCBkdXR5IGZvciB2ZXJp
ZnkgcGF0Y2ggaSBzZW50Lgo+IFRoZSBmYXVsdCBpcyBlbnRpcmVseSBtaW5lIGFuZCBJIGRlZXBs
eSByZWdyZXQgdGhhdCBpdCBzaG91bGQgaGF2ZSBvY2N1cnJlZC4KPiBJIHdpbGwgYWx3YXlzIHZl
cmlmeSBwYXRjaCBieSBtZXNlbGYgYmVmb3JlIHNlbmRpbmcgaXQuCj4gSSBoYXZlIGFscmVhZHkg
dmVyZmllZCBzdWItZGV2aWNlIGFkYy9sZWQvcmVndWxhdG9yIGRvbmUgaW4gTWVkaWF0ZWsKPiBw
aG9uZSBhbmQgSGlrZXk5NjAgZGV2ZWxvcG1lbnQgYm9hcmQKCkknbSBub3QgbG9va2luZyBmb3Ig
c29tZW9uZSB0byBibGFtZS4gIEluc3RlYWQsIEkgd291bGQgbGlrZSB0bwphc2NlcnRhaW4gaG93
IHRoaXMgaGFwcGVuZWQuICBIb3cgd2FzIHRoaXMgZHJpdmVyIGV2ZXIKdGVzdGVkL3ZlcmlmaWVk
PyAgSWYgeW91J3JlIG5vdCBnb2luZyB0byBydW4vdXNlIGl0LCBkb2VzIGl0IGV2ZW4gbmVlZAp0
byBleGlzdD8KCi0tIApMZWUgSm9uZXMgW+adjueQvOaWr10KU2VuaW9yIFRlY2huaWNhbCBMZWFk
IC0gRGV2ZWxvcGVyIFNlcnZpY2VzCkxpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJl
IGZvciBBcm0gU29DcwpGb2xsb3cgTGluYXJvOiBGYWNlYm9vayB8IFR3aXR0ZXIgfCBCbG9nCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
