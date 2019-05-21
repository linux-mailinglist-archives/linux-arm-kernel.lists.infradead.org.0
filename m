Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B9DC24FB4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 15:04:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cd0JlT3m382ys5y3qfUONOcYBg8xXian6HQv6Y74F8Y=; b=VlBE1+GzGh/h3r
	862W4ArwdYhpvILe86S24m1fq++XaJnG1D3cXiJMRVhbkVO8SonpruhoXhjPzMyQ/Chee3Yh2+NFe
	m/bXOYEhcuHp8EeIvd1aBwa+ds+nNACVZUyZlFsF4apKwdVvtcXIesCLkyVI2ioMAAzd2ijBPFSRI
	uvCFe7fprOIEZnyajvt+3cWJ+l3dv7mcRMe09qSlviogKbkFSVjIy79E6sJ/GQ1+kF16Pz7ORNV21
	1oPNF4kLYRxeIZaGZnuEK+0SZsF/vcB9TgDLi6pfeo0DodjWxC6MqC4s5uMnO0JK0zrv8fPOuy0+K
	H3+V2SIzvf85FM2k9R7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT4Rn-0004u6-Mw; Tue, 21 May 2019 13:04:51 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT4Rg-0004tK-En
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 13:04:46 +0000
Received: by mail-wr1-x443.google.com with SMTP id b18so18475124wrq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 May 2019 06:04:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=brauner.io; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=UoeHu3yoNUcPPl9PKQVlxSlKB7SL3/RQXELHWxMzhXU=;
 b=XJSG1EyPYqVFv06qjxl82rQK6DnXz+zzZ5SuDKstpUJiXRNS8tQ5JU13/0R23pzYo8
 CBflOikG7l96+4gPyOlywhufFiPRmoYNDl41896XQ/0MJatuwnRejMHB6TDC98rsUSsk
 2AmSYFgAwYwyiIa3Uw0OG4PN7UgonE+wdbkLG/dhBH8kdQoOGpBbAw+wyKcjrVvNwBmM
 VMKMZI30ibz9pqFsG/Cn36t1s2Pm2QH0dtNNkeKYHL7aO5r+71RV9j9Ohu/+y3mncQUm
 NMgjzNYEt1ik5sf8wphXNVOj5VnbG86Jclu6wpcMm3hVcqUXQ13o2yCTql/kibMeVk3R
 6GZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=UoeHu3yoNUcPPl9PKQVlxSlKB7SL3/RQXELHWxMzhXU=;
 b=awdkYz1jxkPKRCH4+nVqaYtLf8UGZW49Cr54pYwHUXGctnqfhvl1o6h1uB32kL6qh/
 tC9GdsWZFdkp+tR2RfNY4Px5tSd85UG4CkZX1Dvq5KV8xMQMgyp7QYseKKhOJIBGMT6R
 cC9ZuFj+8DaYKtjlr/MUEsBfoebk7lQ2xxYqKYEuc1d30UnaVOA86OpRknUMrLb4qsIc
 clg9giDa4yay0LkKPSRJ5m0SEk41wPdvPtcTLACXIvHTJx+CPfELF8HtmF8aVkeT0Wj3
 P4dYSaBmgh+bDcUBjMQ3IynxA6+pA+WGCSu1u02/sWRHvdYGnwCjEG3jW5uAtueZLDiH
 ZmWg==
X-Gm-Message-State: APjAAAVdyl1hwOxym0r1cWCIMOgoZiqjAJZrK//HYs3R2XSDEq0nKGCN
 vcy9buVEAgi3DfNdMYFVgV17ew==
X-Google-Smtp-Source: APXvYqxG2D4TpRJtgA1by9C5SwilBq6kPP4Jw28l+Fw52p05f/l2TsKOiCci80kJtWr6XsY8G818bQ==
X-Received: by 2002:a5d:6b12:: with SMTP id v18mr34420146wrw.306.1558443882738; 
 Tue, 21 May 2019 06:04:42 -0700 (PDT)
Received: from brauner.io (p548C9938.dip0.t-ipconnect.de. [84.140.153.56])
 by smtp.gmail.com with ESMTPSA id x64sm5789182wmg.17.2019.05.21.06.04.41
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 21 May 2019 06:04:42 -0700 (PDT)
Date: Tue, 21 May 2019 15:04:39 +0200
From: Christian Brauner <christian@brauner.io>
To: Florian Weimer <fweimer@redhat.com>
Subject: Re: [PATCH 1/2] open: add close_range()
Message-ID: <20190521130438.q3u4wvve7p6md6cm@brauner.io>
References: <20190521113448.20654-1-christian@brauner.io>
 <87tvdoau12.fsf@oldenburg2.str.redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87tvdoau12.fsf@oldenburg2.str.redhat.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_060444_725486_6439545E 
X-CRM114-Status: GOOD (  17.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org,
 linux-kernel@vger.kernel.org, dhowells@redhat.com,
 linux-kselftest@vger.kernel.org, sparclinux@vger.kernel.org, shuah@kernel.org,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org, miklos@szeredi.hu,
 x86@kernel.org, torvalds@linux-foundation.org, linux-mips@vger.kernel.org,
 linux-xtensa@linux-xtensa.org, tkjos@android.com, arnd@arndb.de,
 jannh@google.com, linux-m68k@lists.linux-m68k.org, viro@zeniv.linux.org.uk,
 tglx@linutronix.de, ldv@altlinux.org, linux-arm-kernel@lists.infradead.org,
 linux-parisc@vger.kernel.org, linux-api@vger.kernel.org, oleg@redhat.com,
 linux-alpha@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBNYXkgMjEsIDIwMTkgYXQgMDI6MDk6MjlQTSArMDIwMCwgRmxvcmlhbiBXZWltZXIg
d3JvdGU6Cj4gKiBDaHJpc3RpYW4gQnJhdW5lcjoKPiAKPiA+ICsvKioKPiA+ICsgKiBfX2Nsb3Nl
X3JhbmdlKCkgLSBDbG9zZSBhbGwgZmlsZSBkZXNjcmlwdG9ycyBpbiBhIGdpdmVuIHJhbmdlLgo+
ID4gKyAqCj4gPiArICogQGZkOiAgICAgc3RhcnRpbmcgZmlsZSBkZXNjcmlwdG9yIHRvIGNsb3Nl
Cj4gPiArICogQG1heF9mZDogbGFzdCBmaWxlIGRlc2NyaXB0b3IgdG8gY2xvc2UKPiA+ICsgKgo+
ID4gKyAqIFRoaXMgY2xvc2VzIGEgcmFuZ2Ugb2YgZmlsZSBkZXNjcmlwdG9ycy4gQWxsIGZpbGUg
ZGVzY3JpcHRvcnMKPiA+ICsgKiBmcm9tIEBmZCB1cCB0byBhbmQgaW5jbHVkaW5nIEBtYXhfZmQg
YXJlIGNsb3NlZC4KPiA+ICsgKi8KPiA+ICtpbnQgX19jbG9zZV9yYW5nZShzdHJ1Y3QgZmlsZXNf
c3RydWN0ICpmaWxlcywgdW5zaWduZWQgZmQsIHVuc2lnbmVkIG1heF9mZCkKPiA+ICt7Cj4gPiAr
CXVuc2lnbmVkIGludCBjdXJfbWF4Owo+ID4gKwo+ID4gKwlpZiAoZmQgPiBtYXhfZmQpCj4gPiAr
CQlyZXR1cm4gLUVJTlZBTDsKPiA+ICsKPiA+ICsJcmN1X3JlYWRfbG9jaygpOwo+ID4gKwljdXJf
bWF4ID0gZmlsZXNfZmR0YWJsZShmaWxlcyktPm1heF9mZHM7Cj4gPiArCXJjdV9yZWFkX3VubG9j
aygpOwo+ID4gKwo+ID4gKwkvKiBjYXAgdG8gbGFzdCB2YWxpZCBpbmRleCBpbnRvIGZkdGFibGUg
Ki8KPiA+ICsJaWYgKG1heF9mZCA+PSBjdXJfbWF4KQo+ID4gKwkJbWF4X2ZkID0gY3VyX21heCAt
IDE7Cj4gPiArCj4gPiArCXdoaWxlIChmZCA8PSBtYXhfZmQpCj4gPiArCQlfX2Nsb3NlX2ZkKGZp
bGVzLCBmZCsrKTsKPiA+ICsKPiA+ICsJcmV0dXJuIDA7Cj4gPiArfQo+IAo+IFRoaXMgc2VlbXMg
cmF0aGVyIGRyYXN0aWMuICBIb3cgbG9uZyBkb2VzIHRoaXMgYmxvY2sgaW4ga2VybmVsIG1vZGU/
Cj4gTWF5YmUgaXQncyBva2F5IGFzIGxvbmcgYXMgdGhlIG1heGltdW0gcG9zc2libGUgdmFsdWUg
Zm9yIGN1cl9tYXggc3RheXMKPiBhcm91bmQgNCBtaWxsaW9uIG9yIHNvLgoKVGhhdCdzIHByb2Jh
Ymx5IHZhbGlkIGNvbmNlcm4gd2hlbiB5b3UgcmVhY2ggdmVyeSBoaWdoIG51bWJlcnMgdGhvdWdo
IEkKd29uZGVyIGhvdyByZWxldmFudCB0aGlzIGlzIGluIHByYWN0aWNlLgpBbHNvLCB5b3Ugd291
bGQgb25seSBiZSBibG9ja2luZyB5b3Vyc2VsZiBJIGltYWdpbmUsIGkuZS4geW91IGNhbid0IERP
Uwphbm90aGVyIHRhc2sgd2l0aCB0aGlzIHVubGVzcyB5b3VyIG11bHRpLXRocmVhZGVkLgoKPiAK
PiBTb2xhcmlzIGhhcyBhbiBmZHdhbGsgZnVuY3Rpb246Cj4gCj4gICA8aHR0cHM6Ly9kb2NzLm9y
YWNsZS5jb20vY2QvRTg4MzUzXzAxL2h0bWwvRTM3ODQzL2Nsb3NlZnJvbS0zYy5odG1sPgo+IAo+
IFNvIGEgZGlmZmVyZW50IHdheSB0byBpbXBsZW1lbnQgdGhpcyB3b3VsZCBleHBvc2UgYSBuZXh0
ZmQgc3lzdGVtIGNhbGwKCk1laC4gSWYgbmV4dGZkKCkgdGhlbiBJIHdvdWxkIGxpa2UgaXQgdG8g
YmUgYWJsZSB0bzoKLSBnZXQgdGhlIG5leHRmZChmZCkgPj0gZmQKLSBnZXQgaGlnaGVzdCBvcGVu
IGZkIGUuZy4gbmV4dGZkKC0xKQoKQnV0IHRoZW4gSSB3b25kZXIgaWYgbmV4dGZkKCkgbmVlZHMg
dG8gYmUgYSBzeXNjYWxsIGFuZCBpc24ndCBqdXN0CmVpdGhlcjoKZmNudGwoZmQsIEZfR0VUX05F
WFQpPwpvcgpwcmN0bChQUl9HRVRfTkVYVCk/CgpUZWNobmljYWxseSwgb25lIGNvdWxkIGFsc28g
ZG86CgpmZF9yYW5nZSh1bnNpZ25lZCBmZCwgdW5zaWdlbmQgZW5kX2ZkLCB1bnNpZ25lZCBmbGFn
cyk7CgpmZF9yYW5nZSgzLCA1MCwgRkRfUkFOR0VfQ0xPU0UpOwoKLyogcmV0dXJuIGhpZ2hlc3Qg
ZmQgd2l0aGluIHRoZSByYW5nZSBbMywgNTBdICovCmZkX3JhbmdlKDMsIDUwLCBGRF9SQU5HRV9O
RVhUKTsKCi8qIHJldHVybiBoaWdoZXN0IGZkICovCmZkX3JhbmdlKDMsIFVJTlRfTUFYLCBGRF9S
QU5HRV9ORVhUKTsKClRoaXMgc3lzY2FsbCBjb3VsZCBhbHNvIHJlYXNvbmFibHkgYmUgZXh0ZW5k
ZWQuCgo+IHRvIHVzZXJzcGFjZSwgc28gdGhhdCB3ZSBjYW4gdXNlIHRoYXQgdG8gaW1wbGVtZW50
IGJvdGggZmR3YWxrIGFuZAo+IGNsb3NlZnJvbS4gIEJ1dCBtYXliZSBmZHdhbGsgaXMganVzdCB0
b28gb2JzY3VyZSwgZ2l2ZW4gdGhlIGV4aXN0ZW5jZSBvZgo+IC9wcm9jLgoKWWVhaCB3ZSBwcm9i
YWJseSBkb24ndCBuZWVkIGZkd2Fsay4KCj4gCj4gSSdsbCBoYXBwaWx5IGltcGxlbWVudCBjbG9z
ZWZyb20gb24gdG9wIG9mIGNsb3NlX3JhbmdlIGluIGdsaWJjIChwbHVzCj4gZmFsbGJhY2sgZm9y
IG9sZGVyIGtlcm5lbHMgYmFzZWQgb24gL3Byb2PigJR3aXRoIGFuIGFib3J0IGluIGNhc2UgdGhh
dAo+IGRvZXNuJ3Qgd29yayBiZWNhdXNlIHRoZSBSTElNSVRfTk9GSUxFIGhhY2sgaXMgdW5yZWxp
YWJsZQo+IHVuZm9ydHVuYXRlbHkpLgo+IAo+IFRoYW5rcywKPiBGbG9yaWFuCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
