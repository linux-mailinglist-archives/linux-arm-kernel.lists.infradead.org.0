Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4789E1D3EE8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 22:21:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B98IbqNJFvn+ZnM4ER8jYQdwXHRt7TaPICOc3kduEBA=; b=P7fjO5Cj2N22ku
	PiTIPyVP4BkhLk7wHbjmfp7CUAO8JtXFxa/6UCHpy3uxE74mpvtyzzwMXtCYRVIb4jlCwDj6MjJjM
	s5v5xrCvAwT7AN+Kpb8uWkx0WjLMCdd1f1qPHjQSTHzY6vDjwgTXF657Mh1khCSa3S3hfiqcMvwVF
	L4I1+rzVY8TNq02SmMLO8QuLtomTUICECTdHTlNmn62ugpbbhQoUH7EJX7fb1hDU1fgX+bBCLIrbB
	WJj9vCEvrs4+lk/76TUnpLXdxlTxt/v5ai/KM7UUcMOSXetOztir6Tsb2yJi/BTdzGVo5u39mdliZ
	vyFCoLVSZjE2PBimAt/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZKLZ-0001c4-DE; Thu, 14 May 2020 20:20:49 +0000
Received: from mo6-p01-ob.smtp.rzone.de ([2a01:238:20a:202:5301::9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZKLP-0001b6-1T
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 20:20:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1589487631;
 s=strato-dkim-0002; d=chronox.de;
 h=References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=5qEHN9Aos9wJSmrSmHepYAI40f0iVUfr9ovzdP/JcuY=;
 b=n94lMm1WK4/IcujLm6V6WNC53wCJs8UpVwAk/xnAEtF4yWXO6pFmhEOo24MDcVD8tf
 06blpuOR6luiBiDqi4vKbscPQUczaCGKLSVA9ZDwNxwXmCRN3JPgREZNAne+HsW+lQ46
 w8LBr4N4Gf04NvmI7qC8/aIip36F1qzE54ZcJCKKKItH6oI0DJs775QyfnmU0saek0Jp
 zh5ikLldd+gh/rZ6mAGhAGsb3FOscKIqCIGGgpnMgRFP71PyCoT91rjf1qAKY2v65ZdM
 Uwmg1JF7Fvy0fLe2I+KtwvPdYekJM52v+9HIutdJK23zkbwCjlLmb3WdzZm1WGq7Aqcg
 bTAw==
X-RZG-AUTH: ":P2ERcEykfu11Y98lp/T7+hdri+uKZK8TKWEqNyiHySGSa9k9xmwdNnzGHXPaJfSc9C1S"
X-RZG-CLASS-ID: mo00
Received: from tauon.chronox.de by smtp.strato.de (RZmta 46.6.2 DYNA|AUTH)
 with ESMTPSA id u08bf3w4EKKQxtG
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
 (Client did not present a certificate);
 Thu, 14 May 2020 22:20:26 +0200 (CEST)
From: Stephan Mueller <smueller@chronox.de>
To: =?utf-8?B?xYF1a2Fzeg==?= Stelmach <l.stelmach@samsung.com>
Subject: Re: [PATCH 1/2] hwrng: iproc-rng200 - Set the quality value
Date: Thu, 14 May 2020 22:20:26 +0200
Message-ID: <4493123.C11H8YMYNy@tauon.chronox.de>
In-Reply-To: <20200514190734.32746-2-l.stelmach@samsung.com>
References: <20200514190734.32746-1-l.stelmach@samsung.com>
 <CGME20200514190738eucas1p2695c0d8af064ee702209ca03696ef438@eucas1p2.samsung.com>
 <20200514190734.32746-2-l.stelmach@samsung.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_132039_676011_EBC44626 
X-CRM114-Status: UNSURE (   8.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:238:20a:202:5301:0:0:9 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Scott Branden <sbranden@broadcom.com>, Matthias Brugger <mbrugger@suse.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Matt Mackall <mpm@selenic.com>, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, linux-samsung-soc@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Kukjin Kim <kgene@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Stefan Wahren <wahrenst@gmx.net>, Ray Jui <rjui@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com,
 Markus Elfring <elfring@users.sourceforge.net>,
 linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gRG9ubmVyc3RhZywgMTQuIE1haSAyMDIwLCAyMTowNzozMyBDRVNUIHNjaHJpZWIgxYF1a2Fz
eiBTdGVsbWFjaDoKCkhpIMWBdWthc3osCgo+IFRoZSB2YWx1ZSBoYXMgYmVlbiBlc3RpbWFkZWQg
Ynkgb2J0YWluaWcgMTAyNCBjaHVua3Mgb2YgZGF0YSAxMjggYnl0ZXMKPiAoMTAyNCBiaXRzKSBl
YWNoIGZyb20gdGhlIGdlbmVyYXRvciBhbmQgZmluZGluZyBjaHVuayB3aXRoIG1pbmltYWwKPiBl
bnRyb3B5IHVzaW5nIHRoZSBlbnQoMSkgdG9vbC4gVGhlIHZhbHVlIHdhcyA2LjMyNzgyMCBiaXRz
IG9mIGVudHJvcHkKPiBpbiBlYWNoIDggYml0cyBvZiBkYXRhLgoKSSBhbSBub3Qgc3VyZSB3ZSBz
aG91bGQgdXNlIHRoZSBlbnQgdG9vbCB0byBkZWZpbmUgdGhlIGVudHJvcHkgbGV2ZWwuIEVudCAK
c2VlbXMgdG8gdXNlIGEgdmVyeSBjb2Fyc2UgZW50cm9weSBlc3RpbWF0aW9uLgoKSSB3b3VsZCBm
ZWVsIG1vcmUgY29tZm9ydGFibGUgd2hlbiB1c2luZyBvdGhlciBtZWFzdXJlcyBsaWtlIFNQODAw
LTkwQiB3aGljaCAKZXZlbiBwcm92aWRlcyBhIHRvb2wgZm9yIHRoZSBhbmFseXNpcy4KCkkgdW5k
ZXJzdGFuZCB0aGF0IGVudHJvcHkgZXN0aW1hdGVzLCB3ZWxsLCBhcmUgZXN0aW1hdGVzLiBCdXQg
dGhlIGVudCBkYXRhIGlzIApjb21tb25seSBub3QgdmVyeSBjb25zZXJ2YXRpdmUuCgpbMV0gaHR0
cHM6Ly9naXRodWIuY29tL3VzbmlzdGdvdi9TUDgwMC05MEJfRW50cm9weUFzc2Vzc21lbnQKCkNp
YW8KU3RlcGhhbgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
