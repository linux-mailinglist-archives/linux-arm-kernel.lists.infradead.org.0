Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE1D71F8883
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 14 Jun 2020 13:02:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dIDiR43GDRag5NnlCA57g+k+ZNYyBIFbmR1WAWyccEk=; b=OHicvjEXibiPqt
	bm867L7nk8OclvF9Yraalceo/DFn6zoox9k1FYutR/Euwdi3FUgULo/uuKwYn6ISwfGAthdHN6Lrt
	Q6Ri6NjSQihSXEFjhAe4E/hhLHrrFScNWhUxrU5jqXXFy4fRCNYVuAwPjDtfFK2ieaG4xbWWJ8S3x
	1I/Msst4y/gSF8PqJ1+ufl5oYLelbABCGEvcu7s7LiJl4tyJKh1w+/hanxdT3/Sa554k6pEF0h98c
	KGOcuZzYPgR5zH0eet3UOgterbPWK/W4F/Pie8TXK1ZesvdmZDOArbfN5LLxSb7Hna4nV9rlA4Xcc
	Z340GCZdHrdFWU/UY8nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkQP1-0004bC-5P; Sun, 14 Jun 2020 11:02:15 +0000
Received: from mail-ed1-f67.google.com ([209.85.208.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkQOu-0004aS-8k
 for linux-arm-kernel@lists.infradead.org; Sun, 14 Jun 2020 11:02:09 +0000
Received: by mail-ed1-f67.google.com with SMTP id e12so9448829eds.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 14 Jun 2020 04:02:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=vAJP+Qm1ITbUQAx+Rf97o4j246jVO27jjV+OTrxlf9M=;
 b=bw5qJmWsQ4SzOst/ej+AitE39xH4DIf2zub6LD5rQM2JU7/eTcsu2kNW6buWm6XHiT
 7n0QkW5ihQruYbvXDvcPqyVHWaBPBqMPBoGDk9dFxab8JOf+Ipjm7818jJmTurTgaguY
 a1dLYaekwNcQ+7/VlXJ6cijc+KHd5xBmAPtqD+7+39b/XSpEpnPKW7E7xHBTD7VaQoX5
 cKY3hdLeawjiBQAc6DKNfHrmGNouONEx22QQ+rHHbEI18d9Dtvk9+fWvVxOxmcLSrB7W
 nrQ6xt4VatFr9BBWUZkBNrSgUtDunD8oSKAzzZ6AD67/7ur3IVy/GBf/XTaK/nCZvWMK
 FpzA==
X-Gm-Message-State: AOAM532zsXiBDg8xCK7EtZUousnMPrGDGol0fsYX5SzeIte9YDWkORV7
 J4CggfXPcozGVxZYxoWcTkc=
X-Google-Smtp-Source: ABdhPJwtSvwv9aaQuA4MA3Hl/WyWGidqaLZh3pPqB1mdV9/OfwZ6uDKB+wc1JMWBqtFyq3k9oCrZvw==
X-Received: by 2002:a05:6402:22a5:: with SMTP id
 cx5mr20312888edb.246.1592132525507; 
 Sun, 14 Jun 2020 04:02:05 -0700 (PDT)
Received: from kozik-lap ([194.230.155.184])
 by smtp.googlemail.com with ESMTPSA id m30sm6507368eda.16.2020.06.14.04.02.04
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 14 Jun 2020 04:02:04 -0700 (PDT)
Date: Sun, 14 Jun 2020 13:02:02 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Alim Akhtar <alim.akhtar@samsung.com>
Subject: Re: [RESEND PATCH v10 10/10] arm64: dts: Add node for ufs exynos7
Message-ID: <20200614110202.GA9009@kozik-lap>
References: <20200613024706.27975-1-alim.akhtar@samsung.com>
 <CGME20200613030458epcas5p3f9667bab202d99fb332d5bf5aad63c85@epcas5p3.samsung.com>
 <20200613024706.27975-11-alim.akhtar@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200613024706.27975-11-alim.akhtar@samsung.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200614_040208_307887_989ADBE9 
X-CRM114-Status: UNSURE (   8.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kozlowski.k[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.67 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: robh@kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-scsi@vger.kernel.org, martin.petersen@oracle.com,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 kwmad.kim@samsung.com, kishon@ti.com, avri.altman@wdc.com, cang@codeaurora.org,
 stanley.chu@mediatek.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU2F0LCBKdW4gMTMsIDIwMjAgYXQgMDg6MTc6MDZBTSArMDUzMCwgQWxpbSBBa2h0YXIgd3Jv
dGU6Cj4gQWRkaW5nIGR0IG5vZGUgZm9lIFVGUyBhbmQgVUZTLVBIWSBmb3IgZXh5bm9zNyBTb0Mu
Cj4gCj4gU2lnbmVkLW9mZi1ieTogQWxpbSBBa2h0YXIgPGFsaW0uYWtodGFyQHNhbXN1bmcuY29t
Pgo+IFRlc3RlZC1ieTogUGF3ZcWCIENobWllbCA8cGF3ZWwubWlrb2xhai5jaG1pZWxAZ21haWwu
Y29tPgo+IC0tLQo+ICAuLi4vYm9vdC9kdHMvZXh5bm9zL2V4eW5vczctZXNwcmVzc28uZHRzICAg
ICAgfCAgNCArKwo+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL2V4eW5vcy9leHlub3M3LmR0c2kgICAg
ICAgfCA0MyArKysrKysrKysrKysrKysrKystCj4gIDIgZmlsZXMgY2hhbmdlZCwgNDUgaW5zZXJ0
aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiAKClRoaXMgaXMgYWxyZWFkeSBhcHBsaWVkIGFuZCBp
biB0aGUgbGludXgtbmV4dC4gIERvbid0IHJlc2VuZCBhcHBsaWVkCnBhdGNoZXMuCgpCZXN0IHJl
Z2FyZHMsCktyenlzenRvZgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
