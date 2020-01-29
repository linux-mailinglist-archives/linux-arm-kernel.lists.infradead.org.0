Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55D8114D0BF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Jan 2020 19:56:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rlu6wZU3YbQEZ8H4Sbk6/2MVRWkzjicorKYN0VYRSG4=; b=l1LvXq54R1YlIN
	JoeJEk7DXv+s0cLyzaWey3iKUZUZjDS5lKstPtv9v7bAXinm6WaYtph+5Hth3kWrRLZlqE+lVGo3N
	6Di0/v9jftBigaOaCldxQD6UiM+4R5f3HrMr37/bOdI5VPvcL7+q4rSgZRc/+hCxLyO5Faxp3olnW
	2d7TeLFGIhXbv3pu/YTGA3Q+Nv4M3oC925832Bi/PUnmyp6T3VTLkTngUInuwCIlk+rvmce2wG0QE
	m30Jztu9/8OTJoypy+QoRNFTLRp9v4XN1PY2sdTxe2mKmFmTAISh6Jnf9r0WM7tMDfxWASc66Frwt
	smmKE5WFLC+xFhctQXYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwsWA-0005hd-LV; Wed, 29 Jan 2020 18:56:50 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwsVz-0005h1-F2
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Jan 2020 18:56:40 +0000
Received: by mail-wm1-x342.google.com with SMTP id s144so4713432wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Jan 2020 10:56:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=AF+mno6mYz9qIP41mXsPhY+8d+0nQqfFtsqICTMMkM4=;
 b=kzyCjLdcFiEAO63kT2kKmXjCLjnPtogY6x/OrY53eV/0C+tFhthvjCYTK7zD58Ilxd
 T3hxARgD4DlHcPfJ4tso69kH2AFhmOWEeLA2OczFXNTR3nqvvnfLEfmOdRkpZ7LRkfDY
 ALjAi6pD5YYDKI5clCSCUhnjwnv0wQvBNDJ2SfbcTwERWeGqV7UFw4AFTJes0N06YD/L
 go50g4z5Dnnxbaev5jE89hY4YejixzDmhYF2NnWumiSp4mPte7GUzxvB/BT15Z7zP0lz
 LcInPmmyy0d8yIujQONdTyvr2tVMhKY3F2Ms/bg9PH1h5ooLydKCN7zb4G9c1CtiBduR
 IzTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=AF+mno6mYz9qIP41mXsPhY+8d+0nQqfFtsqICTMMkM4=;
 b=GNan/Uz3lC8C3qlSI8+hzJT7/Mg1+bLtAFpZA4B9q8G4JEUC5FXe5Y6iCuZAyDB47h
 zTeiw9R4/6C9J3wyWGUQ7Nm/iqwq079uPefW3cnfVG42lhTfY2vH3JH8QzNVyK9AEK6J
 VAvoO+Y80Q2ZaNfS3sSjaX4y9Hpe/Sy2h/I0FRc6txFMXW/2u/mqIt2g7Pt/avdjzwmE
 KfsG1uQpOQFh3KAAHyuknrR1iM4QIszR4R355+2oF/Xh4WyBdXcXBzBPMMiSFjo422lj
 y2MMD4pU7ZZXcx9lfgdljJyHrcloJ+trvOKGOY905fBJAysEdjjqy8vHP9T4+qZbsfeU
 A/AA==
X-Gm-Message-State: APjAAAU9WR9B8HyGFj1TLHxCdnlpbxFMqNmQGBTkLsZXIiH2KzVpgCF5
 cYQ5XlvmN3YfDGNKkEkDpwIv9PHY
X-Google-Smtp-Source: APXvYqxz9qbzM1VD9pn+/zENw9XmqmzRFTxdo+ky/Lu0dCkVrisPEjk3Q/f4/PPfhnZaLZzILAZKGw==
X-Received: by 2002:a1c:65d6:: with SMTP id z205mr657945wmb.38.1580324197331; 
 Wed, 29 Jan 2020 10:56:37 -0800 (PST)
Received: from [192.168.2.145] (79-139-233-37.dynamic.spd-mgts.ru.
 [79.139.233.37])
 by smtp.googlemail.com with ESMTPSA id a6sm3996048wrm.69.2020.01.29.10.56.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 29 Jan 2020 10:56:36 -0800 (PST)
Subject: Re: [PATCH 3/5] mm/mremap: use pmd_addr_end to calculate next in
 move_page_tables()
To: Wei Yang <richardw.yang@linux.intel.com>
References: <20200117232254.2792-1-richardw.yang@linux.intel.com>
 <20200117232254.2792-4-richardw.yang@linux.intel.com>
 <7147774a-14e9-4ff3-1548-4565f0d214d5@gmail.com>
 <20200128004301.GD20624@richard>
 <d66bb20e-c0e7-caef-cbbc-aa216c2be7d6@gmail.com>
 <20200128232907.GA11467@richard>
 <27b70b0c-7945-cc85-8321-d9e4b6f17865@gmail.com>
 <20200129002838.GA12835@richard>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <d53d1bde-f677-cfa4-3315-24788171c917@gmail.com>
Date: Wed, 29 Jan 2020 21:56:27 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20200129002838.GA12835@richard>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_105639_504707_9D9C6414 
X-CRM114-Status: GOOD (  11.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [digetx[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: thellstrom@vmware.com, yang.shi@linux.alibaba.com,
 aneesh.kumar@linux.ibm.com, Russell King - ARM Linux <linux@armlinux.org.uk>,
 Jon Hunter <jonathanh@nvidia.com>, linux-mm@kvack.org,
 Thierry Reding <thierry.reding@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
 kirill@shutemov.name, akpm@linux-foundation.org, dan.j.williams@intel.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MjkuMDEuMjAyMCAwMzoyOCwgV2VpIFlhbmcg0L/QuNGI0LXRgjoKLi4uCj4+PiBJIHdvdWxkIHBy
ZXBhcmUgYW5vdGhlciBwYXRjaCBzZXQgdG8gZml4IHRoaXMuIFdvdWxkIHlvdSBtaW5kIGhlbHBp
bmcgbWUKPj4+IHZlcmlmeSBvbiB5b3VyIHBsYXRmb3JtPwo+Pgo+PiBTdXJlLCBwbGVhc2UgZmVl
bCBmcmVlIHRvIENDIG1lIG9uIHRoYXQgcGF0Y2guCj4gCj4gVGhhbmtzLCB5b3UgYXJlIGluIHRo
ZSBjYyBsaXN0IG9mIHYyLgo+IAo+IEhvcGUgdGhpcyBvbmUgd29ya3MgZmluZSBvbiBBUk0uCgpP
a2F5LCBJJ2xsIHJlcGx5IHRvIHRoZSB2MiBhZnRlciBzb21lIG1vcmUgZXh0ZW5zaXZlIHRlc3Rp
bmcgKHRvbW9ycm93KS4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
