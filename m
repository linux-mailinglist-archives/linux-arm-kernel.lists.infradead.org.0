Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF13D166C96
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 03:00:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oj2gYG9EZgayVuhCrY4czQQfKVV9mkG9s1qy+YGt0Fk=; b=ZyxYXyXZLtiRAd
	L69vA/fcK7cjlrf9hRgmJg7nC+4zUMPmSjxhQpjIv+HxHMvNbbXo7LqQnAXIrLrnFcQ2ZNOd8MFQ9
	1sIcDxSlW7gLk/feiRZiPvabEM/dANI1JwxSRFiW+HWPGHIxUEMM7YN4A1xx3Ar4OYq21SJLc8eGE
	mG8zBNHRUe9T598JW4XBDOcAZH1GPf0N/tS9AASod7jNZqkVIDjl6iICM2S+IwPoTMh/MvR/6LxAe
	lBAoEtZVxT8blTK28iod8eikQEOzUfvSzWkegDM30u/jh8y4TNmdX6LGhD6cLVS7U+lzTHnSWHlai
	yVkYwt0b1k8ZR86VASHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4xbl-0007Fc-P4; Fri, 21 Feb 2020 02:00:01 +0000
Received: from mail-ua1-x943.google.com ([2607:f8b0:4864:20::943])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4xbb-0007E1-8E; Fri, 21 Feb 2020 01:59:52 +0000
Received: by mail-ua1-x943.google.com with SMTP id k24so110081uaq.12;
 Thu, 20 Feb 2020 17:59:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=RdVfbVZXGWk8XlFb7DhCE4Y68FuCmDQuU4O4AdDKTpI=;
 b=UxldTl8dDH1NqcSIeaVFSZzPy9UhFBhamL5nZKIoaU/4voigaEGYM3gJ2kZMebhFcC
 4rvHBYGaWgaqLi6zDYbkq4fepTTp/7+178uwwDcerCbttbmdP5NL+7tJ3V0XmXqHINO5
 5aJxH66aC/qNywwe6zkoOcKwd7XL+BohbIIEaxboom3xq3xcMqIj9BpHB+xehNPAXleC
 TOxOUnlglbo9B5jh0r9CATQZRmT+A74oAyFHOMjcFTU9v4xN8uG9FWfS1Bk8CNQKOL4L
 B7nzHeymtwVjoCCRMnb5vLvd+cT7ykgpO1nb1jKUyB9izHbT7R8s67+HlyVl2AW5h1jE
 wSVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=RdVfbVZXGWk8XlFb7DhCE4Y68FuCmDQuU4O4AdDKTpI=;
 b=ABZqGQf4uANniHx68146qhV4qoeWTfP7+MjVWwvl85Ug2mh+18Y5iwIT/wWhgx+1zF
 7hGdgvRDM+cDJ71/JilpI5gWeLnH1sRN1+5DUwiDLefLN+8emQ6IsEJTB7f9/NhjuOYW
 gCTafWwhAX0waqDxYHpBhyffWx1XEgyHEYOOFftaKZEFtA+lnXAT+b1wfTwZ6lZc08kq
 SyE36Jv4+bxSxfXAfSnrtf0XKW+LcpskNgy1peHt1qX+B6uUutnYuz/QKQCw/uk/1e7C
 H117VTBLocYouuhkJ/IUHELVj+9r/9/t+nR0+y4Eij5qhpSP2fV8dKGcODxh3LPpFeFA
 mVjA==
X-Gm-Message-State: APjAAAWR4WZOjqViVpi0l0wQPLjOhLqBuikssdBUi5F8EHW3FtBZYMHZ
 6t7pOWEVoHxDg4GfxBGPHkuJgfDv0Mo0kX7Es+0=
X-Google-Smtp-Source: APXvYqzvAhgnhGuKxVxgEOOU/vbidi82mqkro09LPprbwsqNGz7iD8xA6ZnCMsiJGe/Wa6C7yJZ5/FYSF/VqcRCFL/s=
X-Received: by 2002:ab0:45f2:: with SMTP id
 u105mr17834631uau.115.1582250389422; 
 Thu, 20 Feb 2020 17:59:49 -0800 (PST)
MIME-Version: 1.0
References: <20200219141817.24521-1-narmstrong@baylibre.com>
 <20200219141817.24521-3-narmstrong@baylibre.com>
In-Reply-To: <20200219141817.24521-3-narmstrong@baylibre.com>
From: Jun Li <lijun.kernel@gmail.com>
Date: Fri, 21 Feb 2020 09:59:38 +0800
Message-ID: <CAKgpwJXVo_Psyu45+KfRKsTRBc6LRWSvUw2CWdUQseAoKd2p9g@mail.gmail.com>
Subject: Re: [PATCH v3 2/3] usb: dwc3: gadget: Add support for disabling SS
 instances in park mode
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_175951_319174_F84C36EA 
X-CRM114-Status: GOOD (  10.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:943 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [lijun.kernel[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Felipe Balbi <balbi@kernel.org>, Jianxin Pan <jianxin.pan@amlogic.com>,
 khilman@baylibre.com, linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 Tim <elatllat@gmail.com>, Dongjin Kim <tobetter@gmail.com>,
 linux-amlogic@lists.infradead.org, Thinh Nguyen <thinhn@synopsys.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TmVpbCBBcm1zdHJvbmcgPG5hcm1zdHJvbmdAYmF5bGlicmUuY29tPiDkuo4yMDIw5bm0MuaciDE5
5pel5ZGo5LiJIOS4i+WNiDEwOjE45YaZ6YGT77yaCj4KPiBJbiBjZXJ0YWluIGNpcmN1bXN0YW5j
ZXMsIHRoZSBYSENJIFN1cGVyU3BlZWQgaW5zdGFuY2UgaW4gcGFyayBtb2RlCj4gY2FuIGZhaWwg
dG8gcmVjb3ZlciwgdGh1cyBvbiBBbWxvZ2ljIEcxMkEvRzEyQi9TTTEgU29DcyB3aGVuIHRoZXJl
IGlzIGhpZ2gKPiBsb2FkIG9uIHRoZSBzaW5nbGUgWEhDSSBTdXBlclNwZWVkIGluc3RhbmNlLCB0
aGUgY29udHJvbGxlciBjYW4gY3Jhc2ggbGlrZToKPiAgeGhjaS1oY2QgeGhjaS1oY2QuMC5hdXRv
OiB4SENJIGhvc3Qgbm90IHJlc3BvbmRpbmcgdG8gc3RvcCBlbmRwb2ludCBjb21tYW5kLgo+ICB4
aGNpLWhjZCB4aGNpLWhjZC4wLmF1dG86IEhvc3QgaGFsdCBmYWlsZWQsIC0xMTAKPiAgeGhjaS1o
Y2QgeGhjaS1oY2QuMC5hdXRvOiB4SENJIGhvc3QgY29udHJvbGxlciBub3QgcmVzcG9uZGluZywg
YXNzdW1lIGRlYWQKPiAgeGhjaS1oY2QgeGhjaS1oY2QuMC5hdXRvOiB4SENJIGhvc3Qgbm90IHJl
c3BvbmRpbmcgdG8gc3RvcCBlbmRwb2ludCBjb21tYW5kLgo+ICBodWIgMi0xLjE6MS4wOiBodWJf
ZXh0X3BvcnRfc3RhdHVzIGZhaWxlZCAoZXJyID0gLTIyKQo+ICB4aGNpLWhjZCB4aGNpLWhjZC4w
LmF1dG86IEhDIGRpZWQ7IGNsZWFuaW5nIHVwCj4gIHVzYiAyLTEuMS1wb3J0MTogY2Fubm90IHJl
c2V0IChlcnIgPSAtMjIpCj4KPiBTZXR0aW5nIHRoZSBQQVJLTU9ERV9ESVNBQkxFX1NTIGJpdCBp
biB0aGUgRFdDM19VU0IzX0dVQ1RMMSBtaXRpZ2F0ZXMKPiB0aGUgaXNzdWUuIFRoZSBiaXQgaXMg
ZGVzY3JpYmVkIGFzIDoKPiAiV2hlbiB0aGlzIGJpdCBpcyBzZXQgdG8gJzEnIGFsbCBTUyBidXMg
aW5zdGFuY2VzIGluIHBhcmsgbW9kZSBhcmUgZGlzYWJsZWQiCj4KPiBTeW5vcHN5cyBleHBsYWlu
cyBpbiBbMV06Cj4gVGhlIEdVQ1RMMS5QQVJLTU9ERV9ESVNBQkxFX1NTIGlzIG9ubHkgYXZhaWxh
YmxlIGluCj4gZHdjX3VzYjMgY29udHJvbGxlciBydW5uaW5nIGluIGhvc3QgbW9kZS4KPiBUaGlz
IHNob3VsZCBub3QgYmUgc2V0IGZvciBvdGhlciBJUHMuCj4gVGhpcyBjYW4gYmUgZGlzYWJsZWQg
YnkgZGVmYXVsdCBiYXNlZCBvbiBJUCwgYnV0IEkgcmVjb21tZW5kIHRvIGhhdmUgYQo+IHByb3Bl
cnR5IHRvIGVuYWJsZSB0aGlzIGZlYXR1cmUgZm9yIGRldmljZXMgdGhhdCBuZWVkIHRoaXMuCj4K
PiBbMV0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtdXNiLzQ1MjEyZGI5LWUzNjYtMjY2
OS01YzBhLTNjNWJkMDYyODdmNkBzeW5vcHN5cy5jb20KClRoaXMgaXMgbm90IGZvciBnYWRnZXQs
IHBhdGNoIHRpdGxlIHNob3VsZCBiZToKCnVzYjogZHdjMzogY29yZTogYWRkIHN1cHBvcnQuLi4K
CkxpIEp1bgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
