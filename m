Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1545E168F4A
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Feb 2020 15:22:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Z9wl0oeP//p6s9JoTIpWjkjgIngAiLz1FJq1gHgxgL0=; b=ZIb/CA8FrZFf92wlCaVSXMPJJ
	TgXaHE6fkz6m57rKMYmxz80Bim78ZtgjM9KVxj3oQwHtDR0T6osDPHXiNUENhpVOXnt2FUtTwCznH
	H4c1RbtAdDXBBHcaOTRD5g9qtoATZ2fqzOJtV/Gvd9LFaUhBVnLsygeJSbA5IZ8UMFp69DaBuoARl
	YcinK1QOegoiPNrJrycFCqWNTGx1h7LeKBjBSiU29vlkifx3bOXGAglRFupIfjCI5R5StcN4gdQ3J
	HrNfAPY4Rt9Q0NzOs5sZDK0RNykchPVNjHSO+W2EgmpNkZnvoIJEHu0mBXwTzLEynfVSEpxMqgoIW
	dbBY1reYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5VfV-0007gl-J8; Sat, 22 Feb 2020 14:22:09 +0000
Received: from mail-gateway-shared10.cyon.net ([194.126.200.61])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5VfH-0007gB-NO
 for linux-arm-kernel@lists.infradead.org; Sat, 22 Feb 2020 14:21:58 +0000
Received: from s054.cyon.net ([149.126.4.63])
 by mail-gateway-shared10.cyon.net with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim)
 (envelope-from <takashi@yoshi.email>) id 1j5Vf0-0000fG-A9
 for linux-arm-kernel@lists.infradead.org; Sat, 22 Feb 2020 15:21:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=yoshi.email
 ; s=default;
 h=Content-Type:MIME-Version:References:In-Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ZCdFmEmVfie/TJObQdsbhfyS2HdQgThCT9yQgtLH/Ss=; b=EhaeC908wMEEPX0wU27URu2/9E
 +lk+XjYJBLNh8Vo7ZcOt3F5R+SjUH2IVRyorXoik+6Vhwm+O1RjyB9sgE5jTRdyJA0ZzMLWK4cT6N
 2W1uRxSSdX0kMv8rV1dkB0w9/faCd/gCvCsIXrYrstlc+BecabXnY8MgCEyH5GY9vrFClO++6Qc3r
 d5r4AkZZfVe3smgU+svslu1cDEbK0UQgCc2p74wXU9suFEd/TFj20tX1wrlRPZrPS6Su8LJ6nCkbu
 TdJg6VwGVF/M9HGjZOqnqcVbN0ei252+w9ii8ys+yWyCMlzoYLv154tuLrJzGerSf5ZapWuZIaCkK
 O/GHbImg==;
Received: from [10.20.10.231] (port=12860 helo=mail.cyon.ch)
 by s054.cyon.net with esmtpa (Exim 4.92)
 (envelope-from <takashi@yoshi.email>)
 id 1j5Vey-006dye-UW; Sat, 22 Feb 2020 15:21:37 +0100
Date: Sat, 22 Feb 2020 15:21:34 +0100
From: Takashi Yoshi <takashi@yoshi.email>
To: Marc Zyngier <maz@kernel.org>, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org
Subject: Re: [RFC PATCH 0/5] Removing support for 32bit KVM/arm host
Message-ID: <bfd423bf775113ae07e4d53eaea81804f43c4e8c.camel@mera.email>
In-Reply-To: <20200210141324.21090-1-maz@kernel.org>
References: <20200210141324.21090-1-maz@kernel.org>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; armv7a-unknown-linux-gnueabihf)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="MP_/la5n5ZAyUEQ7aLv=PFzS8nx"
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - s054.cyon.net
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - yoshi.email
X-Get-Message-Sender-Via: s054.cyon.net: authenticated_id: takashi@yoshi.email
X-Authenticated-Sender: s054.cyon.net: takashi@yoshi.email
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-OutGoing-Spam-Status: No, score=-1.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_062156_231144_684A0433 
X-CRM114-Status: GOOD (  18.00  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.126.200.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Anders Berg <anders.berg@lsi.com>,
 Vladimir Murzin <vladimir.murzin@arm.com>,
 Russell King <linux@arm.linux.org.uk>, Arnd Bergmann <arnd@arndb.de>,
 Quentin Perret <qperret@google.com>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Christoffer Dall <Christoffer.Dall@arm.com>, James Morse <james.morse@arm.com>,
 Paolo Bonzini <pbonzini@redhat.com>, Will Deacon <will@kernel.org>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--MP_/la5n5ZAyUEQ7aLv=PFzS8nx
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

Hi

I found this mailing list thread and would like to express my opinion
and dependence on KVM/arm32.

I hope that I'm not too late already.


On Monday, 10.02.2020, 14:13 +0000 Marc Zyngier wrote:
> KVM/arm was merged just over 7 years ago, and has lived a very quiet
> life so far. It mostly works if you're prepared to deal with its
> limitations, it has been a good prototype for the arm64 version,
> but it suffers a few problems:
> 
> - It is incomplete (no debug support, no PMU)
> - It hasn't followed any of the architectural evolutions
> - It has zero users (I don't count myself here)

I might not be an important user, but I have been for multiple years
and still am a regular user of KVM/arm32 on different devices.

I use KVM on my Tegra K1 Chromebook for app development and have
multiple SBCs at home on which I run VMs on using KVM+libvirt.

Sure, neither of these devices has many resources available, but they
are working fine. I would love to keep them in service since I haven't
found arm64-based replacements that don't require hours upon hours of
tinkering to just get a basic OS installation running with a mainline
kernel.

As an example that they can still be of use in 2020 I'd like to point
out that one of the SBCs is running my DNS resolver, LDAP server,
RSS reader, IRC bouncer, and shared todo list just fine, each in their
separate VM.

> - It is more and more getting in the way of new arm64 developments
> 
> So here it is: unless someone screams and shows that they rely on
> KVM/arm to be maintained upsteam, I'll remove 32bit host support
> form the tree.

*scream*

> One of the reasons that makes me confident nobody is
> using it is that I never receive *any* bug report. Yes, it is
> perfect.

This assumption is deeply flawed. Most users (including me) are not
subscribed to this mailing list and will never find this thread at all.
I myself stumbled upon this discussion just by chance while I was
browsing the web trying to find something completely unrelated.

I've been using KVM on x86, ppc and arm for many years, yet I never
felt the need to report a bug on the mailing list.
(This is to be interpreted as a compliment to the great work the devs
of KVM have done!)

Just going by the number of bugs reported on a developers mailing list
is not going to paint an accurate picture.

I am convinced that I'm not the only one relying on KVM/arm32 in the
mainline kernel and would ask you to please reconsider keeping arm32 in
the mainline kernel for a few more years until adequate arm64
replacements are available on the market and have gained proper support
in the mainline kernel.

I myself unfortunately do neither have the knowledge nor resources to
help with development in KVM or maintaining a non-mainline kernel.

> But if you depend on KVM/arm being available in mainline, please
> shout.
> 
> To reiterate: 32bit guest support for arm64 stays, of course. Only
> 32bit host goes. Once this is merged, I plan to move virt/kvm/arm to
> arm64, and cleanup all the now unnecessary abstractions.
> 
> The patches have been generated with the -D option to avoid spamming
> everyone with huge diffs, and there is a kvm-arm/goodbye branch in
> my kernel.org repository.
> 
> [...]

Thanks for your understanding.

Kind regards

- Yoshi

--MP_/la5n5ZAyUEQ7aLv=PFzS8nx
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment; filename="Original html part"

<html dir=3D"ltr"><head><style id=3D"-x-evo-a-color-style" type=3D"text/css=
">a { color: #2679db; }</style><style id=3D"-x-evo-a-color-style-visited" t=
ype=3D"text/css">a.-x-evo-visited-link { color: #3b3e45; }</style><style id=
=3D"-x-evo-quote-style" type=3D"text/css">.-x-evo-quoted { -webkit-user-sel=
ect: none; }</style><style id=3D"-x-evo-style-a" type=3D"text/css">a { curs=
or: text; }</style><style id=3D"-x-evo-composer-sheet" media=3D"screen" typ=
e=3D"text/css">body {
  font-family: 'Monospace';
  font-size: 10pt;
  font-weight: 400;
  font-style: normal;
 -webkit-line-break: after-white-space;
 -webkit-font-smoothing: subpixel-antialiased;
}
pre,code,.pre {
  font-family: 'Monospace';
  font-size: 10pt;
  font-weight: 400;
  font-style: normal;
}p,pre,code,address {
  margin: 0;
}
h1,h2,h3,h4,h5,h6 {
  margin-top: 0.2em;
  margin-bottom: 0.2em;
}
td:before {
 content: "=E2=80=8B";}
img {
  height: inherit;=20
  width: inherit;=20
}
span.-x-evo-resizable-wrapper:hover {
  outline: 1px dashed red;=20
  resize: both;=20
  overflow: hidden;=20
  display: inline-block;=20
}
td:hover {
  outline: 1px dotted red;
}
body[data-evo-plain-text] {
  font-family: Monospace;=20
}
body[data-evo-plain-text] img.-x-evo-smiley-img, body:not([data-evo-plain-t=
ext]) span.-x-evo-smiley-text {
  display: none=20
}
[data-evo-paragraph] {
  white-space: pre-wrap;=20
}
body[data-evo-plain-text] [data-evo-paragraph] {
  word-wrap: break-word;=20
  word-break: break-word;=20
}
.-x-evo-plaintext-table {
  border-collapse: collapse;
  width: 71ch;
}
.-x-evo-plaintext-table td {
  vertical-align: top;
}
td > * {
  display : inline-block;
}
body[data-evo-plain-text] ul {
  list-style: outside none;
  -webkit-padding-start: 3ch;=20
}
body[data-evo-plain-text] ul > li {
  list-style-position: outside;
  text-indent: -2ch;
}
body[data-evo-plain-text] ul > li::before {
  content: "*=C2=A0";
}
body[data-evo-plain-text] ul.-x-evo-indented {
  -webkit-padding-start: 3ch;=20
}
body:not([data-evo-plain-text]) ul > li.-x-evo-align-center,ol > li.-x-evo-=
align-center {
  list-style-position: inside;
}
body:not([data-evo-plain-text]) ul > li.-x-evo-align-right, ol > li.-x-evo-=
align-right {
  list-style-position: inside;
}
ol {
  -webkit-padding-start: 6ch;=20
}
ol.-x-evo-indented {
  -webkit-padding-start: 3ch;=20
}
.-x-evo-align-left {
  text-align: left;=20
}
.-x-evo-align-center {
  text-align: center;=20
}
.-x-evo-align-right {
  text-align: right;=20
}
ol,ul {
  -webkit-margin-before: 0em;=20
  -webkit-margin-after: 0em;=20
}
blockquote {
  -webkit-margin-before: 0em;=20
  -webkit-margin-after: 0em;=20
}
blockquote[type=3Dcite] {
  padding: 0.0ex 0ex;
  margin: 0ex;
  -webkit-margin-start: 0em;=20
  -webkit-margin-end : 0em;=20
  color: #737373 !important;=20
}
.-x-evo-quote-character {
  color: rgb(114,159,207);
}
.-x-evo-quote-character+.-x-evo-quote-character{
  color: rgb(173,127,168);
}
.-x-evo-quote-character+.-x-evo-quote-character+.-x-evo-quote-character{
  color: rgb(138,226,52);
}
.-x-evo-quote-character+.-x-evo-quote-character+.-x-evo-quote-character+.-x=
-evo-quote-character{
  color: rgb(252,175,62);
}
.-x-evo-quote-character+.-x-evo-quote-character+.-x-evo-quote-character+.-x=
-evo-quote-character+.-x-evo-quote-character{
  color: rgb(233,185,110);
}
body:not([data-evo-plain-text]) blockquote[type=3Dcite] {
  padding: 0ch 1ch 0ch 1ch;
  margin: 0ch;
  border-width: 0px 2px 0px 2px;
  border-style: none solid none solid;
  border-radius: 2px;
}
body:not([data-evo-plain-text]) blockquote[type=3Dcite] {
  border-color: rgb(114,159,207);
}
body:not([data-evo-plain-text]) blockquote[type=3Dcite] blockquote[type=3Dc=
ite] {
  border-color: rgb(173,127,168);
}
body:not([data-evo-plain-text]) blockquote[type=3Dcite] blockquote[type=3Dc=
ite] blockquote[type=3Dcite] {
  border-color: rgb(138,226,52);
}
body:not([data-evo-plain-text]) blockquote[type=3Dcite] blockquote[type=3Dc=
ite] blockquote[type=3Dcite] blockquote[type=3Dcite] {
  border-color: rgb(252,175,62);
}
body:not([data-evo-plain-text]) blockquote[type=3Dcite] blockquote[type=3Dc=
ite] blockquote[type=3Dcite] blockquote[type=3Dcite] blockquote[type=3Dcite=
] {
  border-color: rgb(233,185,110);
}
</style></head><body data-evo-plain-text=3D"" style=3D"text-align:left; dir=
ection:ltr;" bgcolor=3D"#ffffff" text=3D"#3b3e45" link=3D"#2679db" vlink=3D=
"#3b3e45" data-evo-draft=3D""><div data-evo-paragraph=3D"" class=3D"" style=
=3D"width: 71ch;">Hi</div><div data-evo-paragraph=3D"" class=3D"" style=3D"=
width: 71ch;"><br></div><div data-evo-paragraph=3D"" class=3D"" style=3D"wi=
dth: 71ch;">I found this mailing list thread and would like to express my o=
pinion and dependence on KVM/arm32.</div><div data-evo-paragraph=3D"" class=
=3D"" style=3D"width: 71ch;"><br></div><div data-evo-paragraph=3D"" class=
=3D"" style=3D"width: 71ch;">I hope that I'm not too late already.</div><di=
v data-evo-paragraph=3D"" class=3D"" style=3D"width: 71ch;"><br></div><div =
data-evo-paragraph=3D"" class=3D"" style=3D"width: 71ch;"><br></div><div da=
ta-evo-paragraph=3D"" class=3D"" style=3D"width: 71ch;">On Monday, 10.02.20=
20, 14:13 +0000 Marc Zyngier wrote:</div><blockquote type=3D"cite"><div dat=
a-evo-paragraph=3D"" class=3D"" style=3D"width: 71ch;"><span class=3D"-x-ev=
o-quoted"><span class=3D"-x-evo-quote-character">&gt; </span></span>KVM/arm=
 was merged just over 7 years ago, and has lived a very quiet</div><div dat=
a-evo-paragraph=3D"" class=3D"" style=3D"width: 71ch;"><span class=3D"-x-ev=
o-quoted"><span class=3D"-x-evo-quote-character">&gt; </span></span>life so=
 far. It mostly works if you're prepared to deal with its</div><div data-ev=
o-paragraph=3D"" class=3D"" style=3D"width: 71ch;"><span class=3D"-x-evo-qu=
oted"><span class=3D"-x-evo-quote-character">&gt; </span></span>limitations=
, it has been a good prototype for the arm64 version,</div><div data-evo-pa=
ragraph=3D"" class=3D"" style=3D"width: 71ch;"><span class=3D"-x-evo-quoted=
"><span class=3D"-x-evo-quote-character">&gt; </span></span>but it suffers =
a few problems:</div><div data-evo-paragraph=3D"" class=3D"" style=3D"width=
: 71ch;"><span class=3D"-x-evo-quoted"><span class=3D"-x-evo-quote-characte=
r">&gt; </span></span><br></div><div data-evo-paragraph=3D"" class=3D"" sty=
le=3D"width: 71ch;"><span class=3D"-x-evo-quoted"><span class=3D"-x-evo-quo=
te-character">&gt; </span></span>- It is incomplete (no debug support, no P=
MU)</div><div data-evo-paragraph=3D"" class=3D"" style=3D"width: 71ch;"><sp=
an class=3D"-x-evo-quoted"><span class=3D"-x-evo-quote-character">&gt; </sp=
an></span>- It hasn't followed any of the architectural evolutions</div><di=
v data-evo-paragraph=3D"" class=3D"" style=3D"width: 71ch;"><span class=3D"=
-x-evo-quoted"><span class=3D"-x-evo-quote-character">&gt; </span></span>- =
It has zero users (I don't count myself here)</div></blockquote><div data-e=
vo-paragraph=3D"" class=3D"" style=3D"width: 71ch;"><br></div><div data-evo=
-paragraph=3D"" class=3D"" style=3D"width: 71ch;">I might not be an importa=
nt user, but I have been for multiple years and still am a regular user of =
KVM/arm32 on different devices.</div><div data-evo-paragraph=3D"" class=3D"=
" style=3D"width: 71ch;"><br></div><div data-evo-paragraph=3D"" class=3D"" =
style=3D"width: 71ch;">I&nbsp;use KVM&nbsp;on my Tegra K1 Chromebook for ap=
p development and have multiple SBCs at home on which I&nbsp;run VMs on usi=
ng KVM+libvirt.</div><div data-evo-paragraph=3D"" class=3D"" style=3D"width=
: 71ch;"><br></div><div data-evo-paragraph=3D"" class=3D"" style=3D"width: =
71ch;">Sure, neither of these devices has many resources available, but the=
y are working fine. I&nbsp;would love to keep them in service since I haven=
't found arm64-based replacements that don't require hours upon hours of ti=
nkering to just get a basic OS&nbsp;installation running with a mainline ke=
rnel.</div><div data-evo-paragraph=3D"" class=3D"" style=3D"width: 71ch;"><=
br></div><div data-evo-paragraph=3D"" class=3D"" style=3D"width: 71ch;">As =
an example that they can still be of use in 2020 I'd like to point out that=
 one of the SBCs is running my DNS&nbsp;resolver, LDAP&nbsp;server, RSS&nbs=
p;reader, IRC bouncer, and shared todo list just fine, each in their separa=
te VM.</div><div data-evo-paragraph=3D"" class=3D"" style=3D"width: 71ch;">=
<br></div><blockquote type=3D"cite"><div data-evo-paragraph=3D"" class=3D""=
 style=3D"width: 71ch;"><span class=3D"-x-evo-quoted"><span class=3D"-x-evo=
-quote-character">&gt; </span></span>- It is more and more getting in the w=
ay of new arm64 developments</div><div data-evo-paragraph=3D"" class=3D"" s=
tyle=3D"width: 71ch;"><span class=3D"-x-evo-quoted"><span class=3D"-x-evo-q=
uote-character">&gt; </span></span><br></div><div data-evo-paragraph=3D"" c=
lass=3D"" style=3D"width: 71ch;"><span class=3D"-x-evo-quoted"><span class=
=3D"-x-evo-quote-character">&gt; </span></span>So here it is: unless someon=
e screams and shows that they rely on</div><div data-evo-paragraph=3D"" cla=
ss=3D"" style=3D"width: 71ch;"><span class=3D"-x-evo-quoted"><span class=3D=
"-x-evo-quote-character">&gt; </span></span>KVM/arm to be maintained upstea=
m, I'll remove 32bit host support</div><div data-evo-paragraph=3D"" class=
=3D"" style=3D"width: 71ch;"><span class=3D"-x-evo-quoted"><span class=3D"-=
x-evo-quote-character">&gt; </span></span>form the tree.</div></blockquote>=
<div data-evo-paragraph=3D"" class=3D"" style=3D"width: 71ch;"><br></div><d=
iv data-evo-paragraph=3D"" class=3D"" style=3D"width: 71ch;">*scream*</div>=
<div data-evo-paragraph=3D"" class=3D"" style=3D"width: 71ch;"><br></div><b=
lockquote type=3D"cite"><div data-evo-paragraph=3D"" class=3D"" style=3D"wi=
dth: 71ch;"><span class=3D"-x-evo-quoted"><span class=3D"-x-evo-quote-chara=
cter">&gt; </span></span>One of the reasons that makes me confident nobody =
is</div><div data-evo-paragraph=3D"" class=3D"" style=3D"width: 71ch;"><spa=
n class=3D"-x-evo-quoted"><span class=3D"-x-evo-quote-character">&gt; </spa=
n></span>using it is that I never receive *any* bug report. Yes, it is<span=
 data-hidden-space=3D""></span><br class=3D"-x-evo-wrap-br"><span class=3D"=
-x-evo-quoted"><span class=3D"-x-evo-quote-character">&gt; </span></span>pe=
rfect.</div></blockquote><div data-evo-paragraph=3D"" class=3D"" style=3D"w=
idth: 71ch;"><br></div><div data-evo-paragraph=3D"" class=3D"" style=3D"wid=
th: 71ch;">This assumption is deeply flawed. Most users (including me) are =
not subscribed to this mailing list and will never find this thread at all.=
</div><div data-evo-paragraph=3D"" class=3D"" style=3D"width: 71ch;">I myse=
lf stumbled upon this discussion just by chance while I was browsing the we=
b trying to find something completely unrelated.</div><div data-evo-paragra=
ph=3D"" class=3D"" style=3D"width: 71ch;"><br></div><div data-evo-paragraph=
=3D"" class=3D"" style=3D"width: 71ch;">I've been using KVM on x86, ppc and=
 arm for many years, yet I&nbsp;never felt the need to report a bug on the =
mailing list.</div><div data-evo-paragraph=3D"" class=3D"" style=3D"width: =
71ch;">(This is to be interpreted as a compliment to the great work the dev=
s of KVM&nbsp;have done!)</div><div data-evo-paragraph=3D"" class=3D"" styl=
e=3D"width: 71ch;"><br></div><div data-evo-paragraph=3D"" class=3D"" style=
=3D"width: 71ch;">Just going by the number of bugs reported on a developers=
 mailing list is not going to paint an accurate picture.</div><div data-evo=
-paragraph=3D"" class=3D"" style=3D"width: 71ch;"><br></div><div data-evo-p=
aragraph=3D"" class=3D"" style=3D"width: 71ch;">I am convinced that I'm not=
 the only one relying on KVM/arm32 in the mainline kernel and would ask you=
 to please reconsider keeping arm32 in the mainline kernel for a few more y=
ears until adequate arm64 replacements are available on the market and have=
 gained proper support in the mainline kernel.</div><div data-evo-paragraph=
=3D"" class=3D"" style=3D"width: 71ch;"><br></div><div data-evo-paragraph=
=3D"" class=3D"" style=3D"width: 71ch;">I myself unfortunately do neither h=
ave the knowledge nor resources to help with development in KVM&nbsp;or mai=
ntaining a non-mainline kernel.<span id=3D"-x-evo-selection-start-marker" d=
ata-anchor=3D""></span><span id=3D"-x-evo-selection-end-marker"></span></di=
v><div data-evo-paragraph=3D"" class=3D"" style=3D"width: 71ch;"><br></div>=
<blockquote type=3D"cite"><div data-evo-paragraph=3D"" class=3D"" style=3D"=
width: 71ch;"><span class=3D"-x-evo-quoted"><span class=3D"-x-evo-quote-cha=
racter">&gt; </span></span>But if you depend on KVM/arm being available in =
mainline, please<span data-hidden-space=3D""></span><br class=3D"-x-evo-wra=
p-br"><span class=3D"-x-evo-quoted"><span class=3D"-x-evo-quote-character">=
&gt; </span></span>shout.</div><div data-evo-paragraph=3D"" class=3D"" styl=
e=3D"width: 71ch;"><span class=3D"-x-evo-quoted"><span class=3D"-x-evo-quot=
e-character">&gt; </span></span><br></div><div data-evo-parag


raph=3D"" class=3D"" style=3D"width: 71ch;"><span class=3D"-x-evo-quoted"><=
span class=3D"-x-evo-quote-character">&gt; </span></span>To reiterate: 32bi=
t guest support for arm64 stays, of course. Only</div><div data-evo-paragra=
ph=3D"" class=3D"" style=3D"width: 71ch;"><span class=3D"-x-evo-quoted"><sp=
an class=3D"-x-evo-quote-character">&gt; </span></span>32bit host goes. Onc=
e this is merged, I plan to move virt/kvm/arm to</div><div data-evo-paragra=
ph=3D"" class=3D"" style=3D"width: 71ch;"><span class=3D"-x-evo-quoted"><sp=
an class=3D"-x-evo-quote-character">&gt; </span></span>arm64, and cleanup a=
ll the now unnecessary abstractions.</div><div data-evo-paragraph=3D"" clas=
s=3D"" style=3D"width: 71ch;"><span class=3D"-x-evo-quoted"><span class=3D"=
-x-evo-quote-character">&gt; </span></span><br></div><div data-evo-paragrap=
h=3D"" class=3D"" style=3D"width: 71ch;"><span class=3D"-x-evo-quoted"><spa=
n class=3D"-x-evo-quote-character">&gt; </span></span>The patches have been=
 generated with the -D option to avoid spamming</div><div data-evo-paragrap=
h=3D"" class=3D"" style=3D"width: 71ch;"><span class=3D"-x-evo-quoted"><spa=
n class=3D"-x-evo-quote-character">&gt; </span></span>everyone with huge di=
ffs, and there is a kvm-arm/goodbye branch in</div><div data-evo-paragraph=
=3D"" class=3D"" style=3D"width: 71ch;"><span class=3D"-x-evo-quoted"><span=
 class=3D"-x-evo-quote-character">&gt; </span></span>my kernel.org reposito=
ry.</div><div data-evo-paragraph=3D"" class=3D"" style=3D"width: 71ch;"><sp=
an class=3D"-x-evo-quoted"><span class=3D"-x-evo-quote-character">&gt; </sp=
an></span><br></div><div data-evo-paragraph=3D"" class=3D"" style=3D"width:=
 71ch;"><span class=3D"-x-evo-quoted"><span class=3D"-x-evo-quote-character=
">&gt; </span></span>[...]</div></blockquote><div data-evo-paragraph=3D"" c=
lass=3D"" style=3D"width: 71ch;"><br></div><div data-evo-paragraph=3D"" cla=
ss=3D"" style=3D"width: 71ch;">Thanks for your understanding.</div><div dat=
a-evo-paragraph=3D"" class=3D"" style=3D"width: 71ch;"><br></div><div data-=
evo-paragraph=3D"" class=3D"" style=3D"width: 71ch;">Kind regards</div><div=
 data-evo-paragraph=3D"" class=3D"" style=3D"width: 71ch;"><br></div><div d=
ata-evo-paragraph=3D"" class=3D"" style=3D"width: 71ch;">- Yoshi</div></bod=
y></html>

--MP_/la5n5ZAyUEQ7aLv=PFzS8nx
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--MP_/la5n5ZAyUEQ7aLv=PFzS8nx--

