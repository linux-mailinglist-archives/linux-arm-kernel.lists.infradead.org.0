Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D7C41E5D62
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 12:49:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rDz7ZPxSAPeR7AB9P+iecppbCl+MPtUdBSgHULFuwbg=; b=fvtWctkXds/8G+
	idUJO+gEnJyFBa2N3a4vUk5bua0/oYpzN9X/zwuqoa5zw55E6Fkre46LqjAmiAP+pCPjyi2z1cdGT
	zglYibgZOXYKBFk7BPUKHn2SOG7E84f2KL61otJJ/Awuq+1YBTyl7WVFGr7EexniHP5YGd+/ZiNIE
	RPTFT0FZYVXGbR1VcETB/bFKqr5LFBHb1KHBckBQZNbG9YzxuGGjHzgukDrEpWESYhspt0kVIlgAb
	D9u6xp9UzVgb40AxJsZA9sfOHB+B3eQPdSN8HEVIapS50VAQc/XAGavgdAaIrGVwgET2lxq+CRF4X
	4Mz1QfvuNyk5WF09fY8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeG64-0004gt-9P; Thu, 28 May 2020 10:49:12 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeG5v-0004gN-97
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 10:49:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1590662940;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=VSHyppY1XpO/9eGOXVmynSt7C5Mi1ApHOoRfoxA27gc=;
 b=UKvHhnMey7MZMsuOgjOKK5UHyC/6qJHXqPvF5GGcnLXBPW52pScZfO2nB+D6U3Jr0+6rme
 9ogVN9AS2zKFBTPJmAX37kR2pWRWb33yKLp6pZTkAHBi+aZhMMib65AKNLiCyM4MzpS0iO
 fAvxs1Kw6P0DQalireQJ2GaYAqvDD3w=
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-463-i_u8Y5iaP223qvUcArwEaA-1; Thu, 28 May 2020 06:48:56 -0400
X-MC-Unique: i_u8Y5iaP223qvUcArwEaA-1
Received: by mail-ed1-f71.google.com with SMTP id dh6so3554605edb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 03:48:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=VSHyppY1XpO/9eGOXVmynSt7C5Mi1ApHOoRfoxA27gc=;
 b=WZGmz0aHAMFJd64eHXdNNFR2SMHveQmo68jDanK/j9j2BsEICymox48lXbHx+gD5CN
 ZxR3nFi1tE2vk3RKu6hSkIkNvP3LTQ6eYoKIQ7hOUNNX4h7ORXLyYxEWuSo6uhK8/tAk
 fXDIo4DhYfSvIdYXwQiDI3EnYHj2/maZ/BM08qkOOg1vKs9AHWOkRWlabtJIAjv2L13a
 we01vKnO++LQn1e42i6V4lUqTSwKjl8tS1oH6TsV/uz0uDVeP3anOAa1KSGeDJuuVioo
 ZyWYT/Pw/fSJD0qtepaWYgWpmHwyiJINrBOSxHQCnKL5nIn3vDl6s7MY+VaMlkoQ6Ly9
 Gm2Q==
X-Gm-Message-State: AOAM533GZ2e90xxj/t+iGYsFP13VnzETMR1WbOkVx5f3WlMwQz/sWhOD
 S5y8R2pFtwe7u0Rj8N2rMM4jdkj21JJgI7ia4lTDgqv+5mP3F88OWBlfVj/TRhKzLNHcQOfEZ4m
 JRKbquEGdZKDkE9hS9RG4Y/+mNxegWxTYfn0=
X-Received: by 2002:a17:906:a0c2:: with SMTP id
 bh2mr2342893ejb.406.1590662935580; 
 Thu, 28 May 2020 03:48:55 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwFdxMkqeLHcH4ajH7tF56oPdNndquNFDl+4l5rFf/cP02xjCMi5+crYKrNqwLkTxQeEQjKEg==
X-Received: by 2002:a17:906:a0c2:: with SMTP id
 bh2mr2342873ejb.406.1590662935381; 
 Thu, 28 May 2020 03:48:55 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:3c1c:ffba:c624:29b8?
 ([2001:b07:6468:f312:3c1c:ffba:c624:29b8])
 by smtp.gmail.com with ESMTPSA id o21sm4709127edr.68.2020.05.28.03.48.53
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 28 May 2020 03:48:54 -0700 (PDT)
Subject: Re: [PATCH RFCv2 9/9] arm64: Support async page fault
To: Gavin Shan <gshan@redhat.com>, kvmarm@lists.cs.columbia.edu
References: <20200508032919.52147-1-gshan@redhat.com>
 <20200508032919.52147-10-gshan@redhat.com>
 <81adf013-3de7-23e6-7648-8aec821b033c@redhat.com>
 <a6addc25-29af-3690-8392-efa5e8381e98@redhat.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <8ab64c6a-582b-691d-79ab-21cdc0455cd3@redhat.com>
Date: Thu, 28 May 2020 12:48:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <a6addc25-29af-3690-8392-efa5e8381e98@redhat.com>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_034903_398789_4241AFED 
X-CRM114-Status: GOOD (  11.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [207.211.31.120 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: maz@kernel.org, linux-kernel@vger.kernel.org, shan.gavin@gmail.com,
 catalin.marinas@arm.com, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjgvMDUvMjAgMDg6MTQsIEdhdmluIFNoYW4gd3JvdGU6Cj4+IC0gZm9yIHg4NiB3ZSdyZSBh
bHNvIHRoaW5raW5nIG9mIGluaXRpYXRpbmcgdGhlIHBhZ2UgZmF1bHQgZnJvbSB0aGUKPj4gZXhj
ZXB0aW9uIGhhbmRsZXIsIHJhdGhlciB0aGFuIGRvaW5nIHNvIGZyb20gdGhlIGh5cGVydmlzb3Ig
YmVmb3JlCj4+IGluamVjdGluZyB0aGUgZXhjZXB0aW9uLsKgIElmIEFSTSBsZWFkcyB0aGUgd2F5
IGhlcmUsIHdlIHdvdWxkIGRvIG91cgo+PiBiZXN0IHRvIHNoYXJlIGNvZGUgd2hlbiB4ODYgZG9l
cyB0aGUgc2FtZS4KPiAKPiBTb3JyeSwgUGFvbG8sIEkgZG9uJ3QgZm9sbG93IHlvdXIgaWRlYSBo
ZXJlLiBDb3VsZCB5b3UgcGxlYXNlIHByb3ZpZGUKPiBtb3JlIGRldGFpbHM/CgpUaGUgaWRlYSBp
cyB0byBpbmplY3Qgc3RhZ2UyIHBhZ2UgZmF1bHRzIGludG8gdGhlIGd1ZXN0IGV2ZW4gYmVmb3Jl
IHRoZQpob3N0IHN0YXJ0cyBwb3B1bGF0ZXMgdGhlIHBhZ2UuICBUaGUgZ3Vlc3QgdGhlbiBpbnZv
a2VzIGEgaHlwZXJjYWxsLAp0ZWxsaW5nIHRoZSBob3N0IHRvIHBvcHVsYXRlIHRoZSBwYWdlIHRh
YmxlIGFuZCBpbmplY3QgdGhlICdwYWdlIHJlYWR5JwpldmVudCAoaW50ZXJydXB0KSB3aGVuIGl0
J3MgZG9uZS4KCkZvciB4ODYgdGhlIGFkdmFudGFnZSBpcyB0aGF0IHRoZSBwcm9jZXNzb3IgY2Fu
IHRha2UgY2FyZSBvZiByYWlzaW5nIHRoZQpzdGFnZTIgcGFnZSBmYXVsdCBpbiB0aGUgZ3Vlc3Qs
IHNvIGl0J3MgZmFzdGVyLgoKUGFvbG8KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
