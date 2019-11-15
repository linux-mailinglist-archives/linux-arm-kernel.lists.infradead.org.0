Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A588FFD209
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 01:38:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JuXg4mSF76wkqTcZF0PbnuYklK/gemVXe20S0DLAw8o=; b=stENUIe/np9V2K
	BMf8s06m9KjsstFIWbaQX3jgwQoivRRSzSIhYZp1pGBgADDhylT5fr1TSuaogTIu8PzFTWifywFHD
	sOftZCfVU44lyt2DkSxuhGXIISeH+HjOeaOGXu45sggceLSQPuLRpN8VKQ0gDGmX8lFBMYAzcjoQc
	a+faf4wnS4AaMJxPur591EKksXZ9bOmxkz8qizhqbAPvmpTcJI3ktI3vkT9nlr8f3cBwZXN8FEpUp
	LhMUw14ADP4P74foToNVGOq0eju2ubNUEYIe4Dcow2epfytaZl8kVbvSOjADn5AIMaZ4KK3ksDvWK
	TJ8o/XbcAprpqfomUVjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVPdC-000572-Gi; Fri, 15 Nov 2019 00:38:34 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVPd4-00056g-2P
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 00:38:27 +0000
Received: by mail-wm1-x341.google.com with SMTP id a17so8833042wmb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 Nov 2019 16:38:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=V+xyAyokSVdG2YJZBQsiL4UYdt3E6o24h3s6g0fTDHQ=;
 b=alMS8AvtcH2tnUO26K5nS7zSK+98v4P5mFBkv5HzrpQRFZdrUnC08/d/o+dCvZF771
 PIxw8+RRGzhcv5JtqMhmNFK00a7GHIvyNyHTmJs084SQkIENknsGDyc4PuV1ARIIeqSB
 ztUx3sBVVVX/MJScjB/cJQknV4L1rNX8tWcFY7qb3MpX0EUOpFtT7YCkp5i9Rr9iZFbc
 8npg3kUuCrQ7lVnCaivW3205Pj2eKwC/fXKO6Rd427N2IIPs1BJBVh327D4JM1GG/RqY
 ueb40XzyXltLWlprmaL0Eun06GDo1jZ3JWyORxThL/yCXFXzPoAUqbgzPF8FlCHAeLYF
 v9eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=V+xyAyokSVdG2YJZBQsiL4UYdt3E6o24h3s6g0fTDHQ=;
 b=j5XhvVG2w/f+acUkvdKekOP/t+SgoGWEBneuIn1rChgixidPpARLn7FZ1wK6pl16Kx
 lt80shhoISHhFnJ8/1j4+W73y68LmutUcJ9d+dw/czoAeWFqudnqYrJa3jzvXMbVvB2n
 RprTbHn8CgIK3+Ewmu2aUwHxGpPYkJ5EtIEl02CHckdF/sei4ZN+Pc4Gb3p0PFW0i3wo
 XMkHnwydihd9T7ScQnUnJt8v6heUjzfTmK0ptltKLMUFg+954+ldetRWdT9VLhlVIx0a
 eLw/JoJiKdIFyxo2zRtbT2hEvt93KMiOSGupE+PpQ44MBsCjhwW5JtAOs+elA9LdvTJb
 Yy1A==
X-Gm-Message-State: APjAAAXMOitUlwNmq5Lw1gm30PhHvhoJlMMGSPp5fSBqbH/NAvp6wV2y
 2XGmDo5Vm61Be1r/1dhTd6Yea9jR
X-Google-Smtp-Source: APXvYqw+jrTZ3N3Sm7eZpuhockFOKaDrAq0PEkEBLyklk7eKmoF21L840DTBnyz29dOFz0ycSxS9pA==
X-Received: by 2002:a1c:64d6:: with SMTP id
 y205mr10714765wmb.136.1573778303928; 
 Thu, 14 Nov 2019 16:38:23 -0800 (PST)
Received: from ltop.local ([2a02:a03f:40e1:9900:b41c:b7ad:6b56:89fb])
 by smtp.gmail.com with ESMTPSA id g133sm7856389wme.42.2019.11.14.16.38.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Nov 2019 16:38:23 -0800 (PST)
Date: Fri, 15 Nov 2019 01:38:21 +0100
From: Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
To: Alex Kogan <alex.kogan@oracle.com>
Subject: Re: [PATCH v6 3/5] locking/qspinlock: Introduce CNA into the slow
 path of qspinlock
Message-ID: <20191115003821.raskzlj7hscz7vax@ltop.local>
References: <20191107174622.61718-4-alex.kogan@oracle.com>
 <201911110540.8p3UoQAR%lkp@intel.com>
 <58623E4A-973B-46CC-8FA8-29E68DB5EFF4@oracle.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <58623E4A-973B-46CC-8FA8-29E68DB5EFF4@oracle.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_163826_136066_B4A29E30 
X-CRM114-Status: UNSURE (   9.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (luc.vanoostenryck[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Peter Zijlstra <peterz@infradead.org>, hpa@zytor.com, will.deacon@arm.com,
 steven.sistare@oracle.com, guohanjun@huawei.com, linux-arch@vger.kernel.org,
 kbuild test robot <lkp@intel.com>, x86@kernel.org, linux@armlinux.org.uk,
 daniel.m.jordan@oracle.com, linux-sparse@vger.kernel.org, mingo@redhat.com,
 longman@redhat.com, arnd@arndb.de, jglauber@marvell.com,
 rahul.x.yadav@oracle.com, bp@alien8.de, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org, kbuild-all@lists.01.org,
 dave.dice@oracle.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBOb3YgMTQsIDIwMTkgYXQgMDM6NTc6MzRQTSAtMDUwMCwgQWxleCBLb2dhbiB3cm90
ZToKPiArIGxpbnV4LXNwYXJzZSBtYWlsaW5nIGxpc3QKPiAKPiBJdCBzZWVtcyBsaWtlIGEgYnVn
IGluIHRoZSB3YXkgc3BhcnNlIGhhbmRsZXMg4oCccHVyZeKAnSBmdW5jdGlvbnMgdGhhdCByZXR1
cm4KPiBhIHBvaW50ZXIuCgpZZXMsIGl0J3MgYSBidWcgaW4gc3BhcnNlLgogCj4gVGhlIHdhcm5p
bmdzIGNhbiBiZSBlbGltaW5hdGVkIGJ5IGFkZGluZyBhbiBleHBsaWNpdCBjYXN0LCBlLmcuOgo+
IAo+IAlub2RlID0gKHN0cnVjdCBtY3Nfc3BpbmxvY2sgKilncmFiX21jc19ub2RlKG5vZGUsIGlk
eCk7Cj4gCj4gYnV0IHRoaXMgc2VlbXMgd3JvbmcgKHVubmVjZXNzYXJ5KSB0byBtZS4KCkluZGVl
ZCwgaXQgd291bGQgYmUgd3JvbmcuCgpUaGFua3MgZm9yIGFuYWx5emluZyBhbmQgcmVwb3J0aW5n
IHRoaXMsCi0tIEx1YyAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
