Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7695219593E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 15:44:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=j15C4caohY0SwPW6OM3JLx3qFqVD13n3bXrlWh75OmE=; b=RC+kqF3HaLNbNxYdF9CTZ1dFDT
	TB6/mnMsrAsbYroBqAYstp/k6u/W2/GP+wPSGKGU/Du4WW3Ei/2vYxT+Kqv6LQKeTb5fZs5sRg5JJ
	BqvZTE5QuKvWoFFJJF7vIgk/cQHGEhFHjoP8BPZ6JNbqeRfUA5n7DFloExzvyD8aLx6jT7mAOVKON
	D38LmU670djOPQyDqleDgBHSOh/huPEUkiZNkzJzqezjlsBZWCMtGp2JmTceF2Bw68rNPEzXvKvYb
	2DRASTrb1+E23cUc9HLKkco52JhXFtPxFaS1AY9cQh/RBahswOkY75MLbvB+ekGOvS1HP30cFJR8a
	QLNzYf9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHqDG-0003Nz-Kv; Fri, 27 Mar 2020 14:43:58 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHqCz-0003Mo-Ok
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 14:43:44 +0000
Received: by mail-wm1-x343.google.com with SMTP id e9so687556wme.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Mar 2020 07:43:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version:content-transfer-encoding;
 bh=RElc0H4ajCpsZ+IU8Oi18Grn4X6/bIsfI7Rd4JZNnGg=;
 b=IJm1T69ULQGGD8he54WqxyZs7mefjNz0dnCFgw55bIvmnu4Q0unBMO+Sx+NyTOMY/W
 oPi5rGIUl1HlcekFVJyHtkHE8B2ZbZ5EKvARAj7SADvxKnDFi9WHhezNMvKIrrM41ah4
 TfplU3pecpUqUS4xcwb033uL/3nXqJV18pY71JZhgqq0z/eHpij5ei9wX9fJJ34JhX/l
 QHySRz9qKKsug+DKVlkSXccEkvKc2IIJusYE6aCn5iwZ+HbE84pA3Hr/ClyAWX4fPu9P
 d1yU1shs8y9rvAOjbVgFc2pxhgq1Bldmr3S9x2OTWIv4rlcnEbGzuhie3pazfsA0yeEn
 vrvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version:content-transfer-encoding;
 bh=RElc0H4ajCpsZ+IU8Oi18Grn4X6/bIsfI7Rd4JZNnGg=;
 b=SrjSaSmrgMkbRF2SaVmpP7zzQlmfQyqzxXxM/PBuZa61KYp3ja47tD9ZTOgj6KlZr0
 oZf3jeKec3ESlRjlZzqMrNZJtOShuCOdERDUpvZVYwQerh7agJu4uW2oP7TuradcLPJZ
 1Rum+D8pD9WenRRewI34g7sItzhVJuv7GncH5LI238LBA6N3xtQiVGMLisLeOMXolPiT
 FG7Rn6t2v6pSw/5H1tlwAF0QLHMPakw8EVUEDD/cldrJatcDSNLNcQDDQdM2vuC6cIh/
 dyjl5Ue7KVdYtNkXz3a0OYWHTQN/yhPNpElhYxkZyXOJzFlVDxwHgWgobxG+gp+P3wgK
 T4BA==
X-Gm-Message-State: ANhLgQ3oEDVWMYQfKlRGG3GAwT8DnURhNaNxjBQo08fNyyZkGhFKAjy8
 KNUY64F00oi6sgwSgfH68sLIeg==
X-Google-Smtp-Source: ADFU+vuJxth52hKSw8ggzDiw2vgr31It6DxX8GximqB+cEkqSWi2K7CYwtmABNZPI1dVxVugWyF1jA==
X-Received: by 2002:a1c:1f48:: with SMTP id f69mr6005878wmf.144.1585320219350; 
 Fri, 27 Mar 2020 07:43:39 -0700 (PDT)
Received: from zen.linaroharston ([51.148.130.216])
 by smtp.gmail.com with ESMTPSA id u131sm8721458wmg.41.2020.03.27.07.43.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 27 Mar 2020 07:43:37 -0700 (PDT)
Received: from zen (localhost [127.0.0.1])
 by zen.linaroharston (Postfix) with ESMTP id 238181FF7E;
 Fri, 27 Mar 2020 14:43:37 +0000 (GMT)
References: <20200227113735.23605-1-peter.hilber@opensynergy.com>
 <20200317192053.15665-1-peter.hilber@opensynergy.com>
 <87blonas8y.fsf@linaro.org>
User-agent: mu4e 1.3.10; emacs 28.0.50
From: Alex =?utf-8?Q?Benn=C3=A9e?= <alex.bennee@linaro.org>
To: Peter Hilber <peter.hilber@opensynergy.com>
Subject: Re: [virtio-dev] [PATCH v3] Add virtio SCMI device specification
In-reply-to: <87blonas8y.fsf@linaro.org>
Date: Fri, 27 Mar 2020 14:43:37 +0000
Message-ID: <87h7y9n9ie.fsf@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_074342_741941_92820580 
X-CRM114-Status: GOOD (  11.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: virtio-dev@lists.oasis-open.org, Sudeep.Holla@arm.com,
 Souvik.Chakravarty@arm.com, linux-arm-kernel@lists.infradead.org,
 virtio-comment@lists.oasis-open.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CkFsZXggQmVubsOpZSA8YWxleC5iZW5uZWVAbGluYXJvLm9yZz4gd3JpdGVzOgoKPiBQZXRlciBI
aWxiZXIgPHBldGVyLmhpbGJlckBvcGVuc3luZXJneS5jb20+IHdyaXRlczoKPgo+PiBUaGlzIHBh
dGNoIHByb3Bvc2VzIGEgbmV3IHZpcnRpbyBkZXZpY2UgZm9yIHRoZSBBcm0gU0NNSSBwcm90b2Nv
bC4KPj4KPj4gVGhlIGRldmljZSBwcm92aWRlcyBhIHNpbXBsZSB0cmFuc3BvcnQgZm9yIHRoZSBB
cm0gU0NNSSBwcm90b2NvbFsxXS4gVGhlCj4+ICpTKnlzdGVtICpDKm9udHJvbCBhbmQgKk0qYW5h
Z2VtZW50ICpJKm50ZXJmYWNlIHByb3RvY29sIGFsbG93cyBzcGVha2luZwo+PiB0byBzeXN0ZW0g
Y29udHJvbGxlcnMgdGhhdCBhbGxvdyBvcmNoZXN0cmF0aW5nIHRoaW5ncyBsaWtlIHBvd2VyCj4+
IG1hbmFnZW1lbnQsIHN5c3RlbSBzdGF0ZSBtYW5hZ2VtZW50IGFuZCBzZW5zb3IgYWNjZXNzLiBU
aGUgU0NNSSBwcm90b2NvbAo+PiBpcyB1c2VkIG9uIFNvQ3Mgd2hlcmUgbXVsdGlwbGUgY29yZXMg
YW5kIGNvLXByb2Nlc3NvcnMgbmVlZCBhY2Nlc3MgdG8KPj4gdGhlc2UgcmVzb3VyY2VzLgo+Pgo+
IDxzbmlwPgo+Pgo+PiBPcGVuU3luZXJneSBoYXMgYSBwcm90b3R5cGUgaW1wbGVtZW50YXRpb24g
KHdpdGhvdXQgZGV2aWNlIHNwZWNpZmljCj4+IGZlYXR1cmVzIHNvIGZhciksIGFuZCBwbGFucyB0
byB1cHN0cmVhbSB0aGUgTGludXgga2VybmVsIGRyaXZlci4KPgo+IEhhcyBhIFJGQyBvZiB0aGUg
a2VybmVsIGRyaXZlciBiZWVuIHBvc3RlZCB5ZXQ/IEknbSBjdXJpb3VzIG9uIGhvdyBpdAo+IExp
bnV4IGJhY2tlbmQgaW50ZWdyYXRlcyB3aXRoIG90aGVyIGRldmljZXMuCj4KPj4KPj4gVGhlIFBE
RiBvdXRwdXQgaXMgYXZhaWxhYmxlIGF0IFsyXS4KPj4KPj4gWzJdCj4+IGh0dHBzOi8vc2hhcmUu
bWFpbGJveC5vcmcvYWpheC9zaGFyZS8wNTYwNzZlNzA1NzExNDRmNTBjNGNhNzU3MTE0NGIzMTlh
MWQ3MjM2ZGRhMWNkM2IvMS84L016US9NelF2TVEKPgo+IFRoaXMgUERGIHNlZW1zIHRvIGluY2x1
ZGUgYSBmYWlyIG51bWJlciBvZiBleHRyYSBkZXZpY2VzIC0gaW5jbHVkaW5nIGFuCj4gUlBNQiBk
ZXZpY2UgSSdtIHF1aXRlIGludGVyZXN0ZWQgaW4uIElzIHRoaXMgYmVjYXVzZSB5b3UgYXJlIGJ1
aWxkaW5nCj4gZnJvbSBhIHRyZWUgd2l0aCBhIGJ1bmNoIG9mIHJvbGxlZCB1cCB1cGRhdGVzPwoK
SSBvYnZpb3VzbHkgZmFpbGVkIHRvIGFwcHJvcHJpYXRlbHkgZ3JlcCB0aGUgZXhpc3Rpbmcgc3Bl
YyBjbG9zZWx5CmVub3VnaCA6LS8KCj4gL21lIHdvbmRlcnMgb2ZmIHRvIGxvb2sgYXQgdGhlIG1h
a2UgdG9vbGluZyBpbiB0aGUgdXBzdHJlYW0gcmVwbyB0byBzZWUKPiBpZiB0aGluZ3MgY2FuIGJl
IHR3ZWFrZWQgYSBiaXQuCgpJIHdlbnQgYWhlYWQgYW5kIHN1Z2dlc3RlZCBzb21lIHR3ZWFrcyBh
bnl3YXkuCgotLSAKQWxleCBCZW5uw6llCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
